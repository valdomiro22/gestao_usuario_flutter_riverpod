import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/usuario_entity.dart';
import '../repositories/usuario_repository.dart';

class UpdateUsuarioUseCase {
  final UsuarioRepository _repository;

  UpdateUsuarioUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UsuarioEntity usuario) async {
    if (usuario.id == null) {
      return Left(FirestoreFailure('Usuário precisa ter um ID para ser atualizado'));
    }
    return _repository.updateUsuario(usuario);
  }
}
