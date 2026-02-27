import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../repositories/auth_repository.dart';

class DeslogarUseCase {
  final AuthRepository _repository;

  DeslogarUseCase(this._repository);

  Future<Either<Failure, Unit>> call() async {
    return await _repository.signOut();
  }
}
