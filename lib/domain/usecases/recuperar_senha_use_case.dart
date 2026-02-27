import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../repositories/auth_repository.dart';

class RecuperarSenhaUseCase {
  final AuthRepository _repository;

  RecuperarSenhaUseCase(this._repository);

  Future<Either<Failure, Unit>> call(String email) async {
    return await _repository.sendPasswordResetEmail(email);
  }
}
