import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../repositories/auth_repository.dart';

class LogarUseCase {
  final AuthRepository _repository;

  LogarUseCase(this._repository);

  Future<Either<Failure, String?>> call({required String email, required String senha}) async {
    return await _repository.login(email: email, password: senha);
  }
}
