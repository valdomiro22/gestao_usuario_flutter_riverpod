import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/usuario_entity.dart';
import '../repositories/auth_repository.dart';
import '../repositories/usuario_repository.dart';

class AlterarEmailUseCase {
  final AuthRepository _authRepository;
  final UsuarioRepository _usuarioRepository;

  AlterarEmailUseCase(this._authRepository, this._usuarioRepository);

  Future<Either<Failure, Unit>> call({
    required String newEmail,
    required String password,
    required UsuarioEntity usuario,
    required String usuarioId,
  }) async {
    final authResult = await _authRepository.updateEmailAddress(
      newEmail: newEmail,
      password: password,
    );

    return authResult.fold((failure) => Left(failure), (_) {
      final usuarioAtualizado = usuario.copyWith(email: newEmail);
      return _usuarioRepository.updateUsuario(usuario: usuarioAtualizado, usuarioId: usuarioId);
    });
  }
}
