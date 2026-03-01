import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alterar_senha_notifier.g.dart';
part 'alterar_senha_notifier.freezed.dart';

@riverpod
class AlterarSenhaNotifier extends _$AlterarSenhaNotifier {
  @override
  AlterarSenhaState build() => AlterarSenhaState.inicial();
  
  void setNovaSenha(String v) => state = state.copyWith(novaSenha: v);
  void setSenhaAtual(String v) => state = state.copyWith(senhaAtual: v);

  Future<void> alterar(UsuarioEntity usuario) async {
    if (!_validar()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(alterarSenhaUseCaseProvider);
    final result = await useCase(currentPassword: state.senhaAtual, newPassword: state.novaSenha);

    result.fold(
        (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
        (_) => state = state.copyWith(isLoading: false, isSucess: true),
    );
  }

  bool _validar() {
    bool validos = true;
    String? erroNovaSenha;
    String? erroSenhaAtual;

    if (state.novaSenha.isEmpty) {
      validos = false;
      erroNovaSenha = 'Digite a nova senha';
    } else if (state.novaSenha.length < 6) {
      erroNovaSenha = 'A senha deve ter pelo menos 6 digitos';
    }

    if (state.senhaAtual.isEmpty) {
      validos = false;
      erroSenhaAtual = 'Digite a senha atual';
    } else if (state.senhaAtual.length < 6) {
      validos = false;
      erroSenhaAtual = 'Verifique a senha atual digitada';
    }

    state = state.copyWith(erroNovaSenha: erroNovaSenha, erroSenhaAtual: erroSenhaAtual);
    return validos;
  }
  
}

@freezed
sealed class AlterarSenhaState with _$AlterarSenhaState {
  const factory AlterarSenhaState({
    @Default('') String novaSenha,
    @Default('') String senhaAtual,
    String? erro,
    String? erroNovaSenha,
    String? erroSenhaAtual,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
}) = _AlterarSenhaState;

  factory AlterarSenhaState.inicial() => const AlterarSenhaState();

}