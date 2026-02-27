import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logar_notifier.g.dart';
part 'logar_notifier.freezed.dart';

@riverpod
class LogarNotifier extends _$LogarNotifier {
  @override
  LoginState build() => LoginState.inicial();

  void setEmail(String v) => state = state.copyWith(email: v);
  void setSenha(String v) => state = state.copyWith(senha: v);

  Future<void> logar() async {
    if (!_validar()) return;


    state = state.copyWith(isLoading: true);

    final useCase = ref.read(logarUseCaseProvider);
    final result = await useCase(email: state.email, senha: state.senha);

    result.fold(
        (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
        (_) => state = state.copyWith(isLoading: false, isSucess: true),
    );
  }

  bool _validar() {
    bool validos = true;
    String? erroEmail;
    String? erroSenha;

    if (state.email.isEmpty) {
      validos = false;
      erroEmail = 'Digite o email';
    } else if (!state.email.contains('@') || !state.email.contains('.')) {
      validos = false;
      erroEmail = 'Digite um e-mail válido';
    }

    if (state.senha.isEmpty) {
      validos = false;
      erroSenha = 'Digite a senha';
    } else if (state.senha.length < 6) {
      validos = false;
      erroSenha = 'Senha inválida';
    }

    state = state.copyWith(erroEmail: erroEmail, erroSenha: erroSenha);
    return validos;
  }
}


@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String senha,
    String? erro,
    String? erroEmail,
    String? erroSenha,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
  }) = _LoginState;

  factory LoginState.inicial() => const LoginState();
}
