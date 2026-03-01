import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/usuario_entity.dart';

part 'alterar_email_notifier.g.dart';
part 'alterar_email_notifier.freezed.dart';

@riverpod
class AlterarEmailNotifier extends _$AlterarEmailNotifier {
  @override
  AlterarEmailState build() => AlterarEmailState.inicial();

  void setNovoEmail(String v) => state = state.copyWith(newEmail: v);
  void setSenha(String v) => state = state.copyWith(password: v);

  Future<void> alterar(UsuarioEntity usuario) async {
    if (!_validar()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(alterarEmailUseCaseProvider);
    final result = await useCase(usuario: usuario, newEmail: state.newEmail, password: state.password);

    result.fold(
      (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
      (_) => state = state.copyWith(isLoading: false, isSucess: true),
    );
  }

  bool _validar() {
    bool validos = true;
    String? erroNovoEmail;
    String? erroSenha;

    if (state.newEmail.isEmpty) {
      validos = false;
      erroNovoEmail = 'Digite o novo e-mail';
    } else if (!state.newEmail.contains('@') || !state.newEmail.contains('.')) {
      validos = false;
      erroNovoEmail = 'Digite um e-mail válido';
    }

    if (state.password.isEmpty) {
      validos = false;
      erroSenha = 'Digite a senha';
    } else if (state.password.length < 6) {
      validos = false;
      erroSenha = 'Verifique a senha de usuário';
    }

    state = state.copyWith(erroNewEmail: erroNovoEmail, erroPassword: erroSenha);
    return validos;
  }
}


@freezed
sealed class AlterarEmailState with _$AlterarEmailState {
  const factory AlterarEmailState({
    @Default('') String newEmail,
    @Default('') String password,
    String? erro,
    String? erroNewEmail,
    String? erroPassword,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
}) = _AlterarEmailState;

  factory AlterarEmailState.inicial() => const AlterarEmailState();

}