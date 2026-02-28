import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_usuario_notifier.g.dart';

@riverpod
class BuscarUsuarioNotifier extends _$BuscarUsuarioNotifier {
  @override
  Future<UsuarioEntity> build() async {
    final useCase = ref.read(recuperarUsuarioUseCaseProvider);
    final result = await useCase();

    return result.fold(
      (failure) => throw failure,
      (usuario) => usuario,
    );
  }
}