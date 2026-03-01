import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deletar_conta_notifier.g.dart';
part 'deletar_conta_notifier.freezed.dart';

@riverpod
class DeletarContaNotifier extends _$DeletarContaNotifier{
  @override
  DeletarContaState build() => DeletarContaState.inicial();

  void setEmail(String v) => state = state.copyWith(email: v);
  void setSenha(String v) => state = state.copyWith(senha: v);

  Future<void> deletar(String idUsuario) async {
    if (!validar()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(deletarContaUseCaseProvider);
    final result = await useCase(currentPassword: state.senha, usuarioId: idUsuario, email: state.email);

    result.fold(
      (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
      (_) => state = state.copyWith(isLoading: false, isSucess: true),
    );
  }

  bool validar() {
    bool validos = true;
    String? erroEmail;
    String? erroSenha;

    if (state.email.isEmpty) {
      validos = false;
      erroEmail = 'Digite o e-mail';
    } else if (!state.email.contains('@') || !state.email.contains('.')) {
      validos = false;
      erroEmail = 'Digite um e-mail válido';
    }

    if (state.senha.isEmpty) {
      validos = false;
      erroSenha = 'Digite a senha';
    } else if (state.senha.length < 6) {
      validos = false;
      erroSenha = 'Verifique a senha digitada';
    }

    state = state.copyWith(emailErro: erroEmail, senhaErro: erroSenha);
    return validos;
  }
}

@freezed
sealed class DeletarContaState with _$DeletarContaState {
  const factory DeletarContaState({
    @Default('') String email,
    @Default('') String senha,
    String? erro,
    String? emailErro,
    String? senhaErro,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
}) = _DeletarContaState;

  factory DeletarContaState.inicial() => const DeletarContaState();

}