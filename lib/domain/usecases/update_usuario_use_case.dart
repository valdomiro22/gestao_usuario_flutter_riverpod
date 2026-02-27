import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/usuario_entity.dart';
import '../repositories/usuario_repository.dart';

class UpdateUsuarioUseCase {
  final UsuarioRepository _repository;

  UpdateUsuarioUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required UsuarioEntity usuario,
    required String usuarioId,
  }) async {
    return _repository.updateUsuario(usuario: usuario, usuarioId: usuarioId);
  }
}
