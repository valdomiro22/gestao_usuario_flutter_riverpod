import 'dart:developer' as dev;
import 'dart:io';

import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:feature_autentication/presentation/buscarusuario/buscar_usuario_notifier.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/usuario_entity.dart';

part 'atualizar_foto_notifier.g.dart';

@riverpod
class AtualizarFotoNotifier extends _$AtualizarFotoNotifier {
  @override
  AsyncValue build() => AsyncValue.data(null);

  Future<void> atualizar({required UsuarioEntity usuario}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? fotoCapturada = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
      maxWidth: 1024,
      maxHeight: 1024,
    );

    if (fotoCapturada == null) return;

    final arquivoDaFoto = File(fotoCapturada.path);
    state = const AsyncLoading();

    final storageUseCase = ref.read(atualizarFotoPerfilUseCaseProvider);
    final atualizarUsuarioUseCase = ref.read(updateUsuarioUseCaseProvider);

    // 1. Faz o upload para o Storage
    final storageResult = await storageUseCase(
      fotoNova: arquivoDaFoto,
      usuarioId: usuario.id!,
      fotoAntigaUrl: usuario.urlFotoPerfil,
    );

    // 2. Processa o resultado do Storage usando o fold
    // Usamos o fold para decidir se continuamos ou se paramos no erro
    storageResult.fold(
      (failure) => failure,
      (novaUrl) async {
        if (novaUrl == null || novaUrl.isEmpty) return;

        dev.log('Notifier -> URL obtida, atualizando Firestore...');

        // 3. Prepara o usuário atualizado
        final usuarioAtualizado = usuario.copyWith(urlFotoPerfil: novaUrl);

        // 4. Faz o upload para o Firestore (segundo UseCase)
        final firestoreResult = await atualizarUsuarioUseCase(usuarioAtualizado);

        // 5. Define o estado final baseado no resultado do Firestore
        state = firestoreResult.fold(
              (failure) => AsyncValue.error(failure, StackTrace.current),
              (_) {
            dev.log('Notifier -> Perfil atualizado com sucesso!');
            ref.invalidate(buscarUsuarioProvider);
            // return FotoUsuarioState.sucessoComDados(novaUrl);
            return AsyncValue.data(novaUrl);
          },
        );
      },
    );
  }
}