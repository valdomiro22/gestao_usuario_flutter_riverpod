import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recuperar_senha_notifier.g.dart';
part 'recuperar_senha_notifier.freezed.dart';

@riverpod
class RecuperarSenhaNotifier extends _$RecuperarSenhaNotifier {
  @override
  RecuperarSenhaState build() => RecuperarSenhaState.inicial();

  void setEmail(String v) => state = state.copyWith(email: v);

  Future<void> enviarLink() async {
    if (!_validar()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(recuperarSenhaUseCaseProvider);
    final result = await useCase(state.email);

    result.fold(
      (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
      (_) => state = state.copyWith(isLoading: false, isSucess: true),
    );
  }

  bool _validar() {
    bool validos = true;
    String? erEmail;

    if (state.email.isEmpty) {
      validos = false;
      erEmail = 'Digite o e-mail';
    } else if (!state.email.contains('@') || !state.email.contains('.')) {
      validos = false;
      erEmail = 'Digite um e-mail válido';
    }

    state = state.copyWith(erroEmail: erEmail);
    return validos;
  }
}


@freezed
sealed class RecuperarSenhaState with _$RecuperarSenhaState {
  const factory RecuperarSenhaState({
    @Default('') String email,
    String? erro,
    String? erroEmail,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
}) = _RecuperarSenhaState;

  factory RecuperarSenhaState.inicial() => const RecuperarSenhaState();

}