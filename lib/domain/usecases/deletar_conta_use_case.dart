import 'package:dartz/dartz.dart';
import 'package:feature_autentication/domain/repositories/usuario_repository.dart';

import '../../core/error/failure.dart';
import '../repositories/auth_repository.dart';

class DeletarContaUseCase {
  final AuthRepository _authRepository;
  final UsuarioRepository _firestoreRepository;

  DeletarContaUseCase(this._authRepository, this._firestoreRepository);

  Future<Either<Failure, Unit>> call({
    required String usuarioId,
    required String email,
    required String currentPassword,
  }) async {
    final authResult  = await _authRepository.deleteUser(email: email, currentPassword: currentPassword);

    if (authResult.isLeft()) return authResult;

    final resultFirestore = await _firestoreRepository.deleteUsuario(usuarioId);
    return resultFirestore.fold(
        (failure) => Left(failure),
        (_) => Right(unit),
    );
  }
}
