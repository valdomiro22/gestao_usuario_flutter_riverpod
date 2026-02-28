import 'package:feature_autentication/core/di/firebaseproviders/firebase_providers.dart';
import 'package:feature_autentication/domain/usecases/alterar_email_use_case.dart';
import 'package:feature_autentication/domain/usecases/atualizar_foto_perfil_use_case.dart';
import 'package:feature_autentication/domain/usecases/cadastrar_usuario_use_case.dart';
import 'package:feature_autentication/domain/usecases/deletar_conta_use_case.dart';
import 'package:feature_autentication/domain/usecases/deslogar_use_case.dart';
import 'package:feature_autentication/domain/usecases/logar_use_case.dart';
import 'package:feature_autentication/domain/usecases/recuperar_senha_use_case.dart';
import 'package:feature_autentication/domain/usecases/recuperar_usuario_use_case.dart';
import 'package:feature_autentication/domain/usecases/update_usuario_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/usecases/alterar_senha_use_case.dart';

part 'usuario_use_cases.g.dart';

@riverpod
CadastrarUsuarioUseCase cadastrarUsuarioUseCase(Ref ref) {
  final repository = ref.read(usuarioRepositoryProvider);
  final authRp = ref.read(authRepositoryProvider);
  return CadastrarUsuarioUseCase(authRp, repository);
}

@riverpod
LogarUseCase logarUseCase(Ref ref) {
  final authRp = ref.read(authRepositoryProvider);
  return LogarUseCase(authRp);
}

@riverpod
AlterarEmailUseCase alterarEmailUseCase(Ref ref) {
  final auth = ref.read(authRepositoryProvider);
  final firestore = ref.read(usuarioRepositoryProvider);
  return AlterarEmailUseCase(auth, firestore);
}

@riverpod
AlterarSenhaUseCase alterarSenhaUseCase(Ref ref) {
  final rp = ref.read(authRepositoryProvider);
  return AlterarSenhaUseCase(rp);
}

@riverpod
AtualizarFotoPerfilUseCase atualizarFotoPerfilUseCase(Ref ref) {
  final rp = ref.read(usuarioStorageRepositoryProvider);
  return AtualizarFotoPerfilUseCase(rp);
}

@riverpod
DeslogarUseCase deslogarUseCase(Ref ref) {
  final rp = ref.read(authRepositoryProvider);
  return DeslogarUseCase(rp);
}

@riverpod
DeletarContaUseCase deletarContaUseCase(Ref ref) {
  final auth = ref.read(authRepositoryProvider);
  final firestore = ref.read(usuarioRepositoryProvider);
  return DeletarContaUseCase(auth, firestore);
}

@riverpod
RecuperarSenhaUseCase recuperarSenhaUseCase(Ref ref) {
  final rp = ref.read(authRepositoryProvider);
  return RecuperarSenhaUseCase(rp);
}

@riverpod
RecuperarUsuarioUseCase recuperarUsuarioUseCase(Ref ref) {
  final rp = ref.read(usuarioRepositoryProvider);
  final authRp = ref.read(authRepositoryProvider);
  return RecuperarUsuarioUseCase(rp, authRp);
}

@riverpod
UpdateUsuarioUseCase updateUsuarioUseCase(Ref ref) {
  final rp = ref.read(usuarioRepositoryProvider);
  return UpdateUsuarioUseCase(rp);
}
