import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/usuario_entity.dart';
import '../repositories/usuario_repository.dart';

class RecuperarUsuarioUseCase {
  final UsuarioRepository _repository;

  RecuperarUsuarioUseCase(this._repository);

  Future<Either<Failure, UsuarioEntity?>> call(String id) async {
    return _repository.getUsuario(id);
  }
}
