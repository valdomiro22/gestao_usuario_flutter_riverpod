import 'package:feature_autentication/core/di/usecasesproviders/usuario_use_cases.dart';
import 'package:feature_autentication/domain/entities/usuario_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cadastro_notifier.freezed.dart';

part 'cadastro_notifier.g.dart';

@riverpod
class CadastroNotifier extends _$CadastroNotifier {
  @override
  CadastroState build() => CadastroState.inicial();

  void setNome(String v) => state = state.copyWith(nome: v);

  void setSobrenome(String v) => state = state.copyWith(sobrenome: v);

  void setEmail(String v) => state = state.copyWith(email: v);

  void setSenha(String v) => state = state.copyWith(senha: v);

  void setConfirmarSenha(String v) => state = state.copyWith(confirmarSenha: v);

  Future<void> cadastrar() async {
    if (!_validar()) return;

    state = state.copyWith(isLoading: true, erro: null);

    final useCase = ref.read(cadastrarUsuarioUseCaseProvider);
    final usuario = UsuarioEntity(
      nome: state.nome,
      sobrenome: state.sobrenome,
      email: state.email,
      dataCriacao: DateTime.now(),
    );

    final result = await useCase(usuario: usuario, email: state.email, senha: state.senha);
    result.fold(
        (failure) => state = state.copyWith(erro: failure.message),
        (_) => state = state.copyWith(isLoading: false, isSucess: true),
    );
  }

  bool _validar() {
    bool validos = true;
    String? erroNome;
    String? erroSobrenome;
    String? erroEmail;
    String? erroSenha;
    String? erroConfirmarSenha;

    if (state.nome.isEmpty) {
      validos = false;
      erroNome = 'Digite o nome';
    }

    if (state.sobrenome.isEmpty) {
      validos = false;
      erroSobrenome = 'Digite o sobrenome';
    }

    if (state.email.isEmpty) {
      validos = false;
      erroEmail = 'Digite o e-mail';
    } else if (!state.email.contains('@') || !state.email.contains('.')) {
      validos = false;
      erroEmail = 'Digite um e-mail válido';
    }

    if (state.senha.isEmpty) {
      validos = false;
      erroSenha = 'Digite uma senha';
    } else if (state.senha.length < 6) {
      validos = false;
      erroSenha = 'A senha deve ter pelo menos 6 digitos';
    }

    if (state.confirmarSenha.isEmpty) {
      validos = false;
      erroConfirmarSenha = 'Confirme a senha';
    } else if (state.confirmarSenha != state.senha) {
      validos = false;
      erroConfirmarSenha = 'Senhas não conferem';
    }

    state = state.copyWith(
      erroNome: erroNome,
      erroSobrenome: erroSobrenome,
      erroEmail: erroEmail,
      erroSenha: erroSenha,
      erroConfirmarSenha: erroConfirmarSenha,
    );
    return validos;
  }
}

@freezed
sealed class CadastroState with _$CadastroState {
  const factory CadastroState({
    @Default('') String nome,
    @Default('') String sobrenome,
    @Default('') String email,
    @Default('') String senha,
    @Default('') String confirmarSenha,
    String? erro,
    String? erroNome,
    String? erroSobrenome,
    String? erroEmail,
    String? erroSenha,
    String? erroConfirmarSenha,
    String? erroDataCriacao,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
  }) = _CadastroState;

  factory CadastroState.inicial() => const CadastroState();
}
