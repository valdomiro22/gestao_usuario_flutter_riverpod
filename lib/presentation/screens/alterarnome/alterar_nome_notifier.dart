import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alterar_nome_notifier.g.dart';
part 'alterar_nome_notifier.freezed.dart';

@riverpod
class AlterarNomeNotifier extends _$AlterarNomeNotifier {
  @override
  AlterarNomeState build() => AlterarNomeState.inicial();

  void setNome(String v) => state = state.copyWith(nome: v);
  void setSobrenome(String v) => state = state.copyWith(sobreNome: v);

  Future<void> alterar(UsuarioEntity usuario) async {
    if (!_validar()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(updateUsuarioUseCaseProvider);
    final usuarioAtualizado = usuario.copyWith(nome: state.nome, sobrenome: state.sobreNome);
    final result = await useCase(usuario: usuarioAtualizado, usuarioId: usuario.id!);

    result.fold(
      (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
      (_) => state = state.copyWith(isLoading: false, isSucess: true),
    );
  }

  bool _validar() {
    bool validos = true;
    String? erNome;
    String? erSobreNome;

    if (state.nome.isEmpty) {
      validos = false;
      erNome = 'Digite o nome';
    }

    if (state.sobreNome.isEmpty) {
      validos = false;
      erSobreNome = 'Digite o sobrenome';
    }

    state = state.copyWith(erroNome: erNome, erroSobreNome: erSobreNome);
    return validos;
  }
}

@freezed
sealed class AlterarNomeState with _$AlterarNomeState {
  const factory AlterarNomeState({
    @Default('') String nome,
    @Default('') String sobreNome,
    String? erro,
    String? erroNome,
    String? erroSobreNome,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
}) = _AlterarNomeState;

  factory AlterarNomeState.inicial() => const AlterarNomeState();

}