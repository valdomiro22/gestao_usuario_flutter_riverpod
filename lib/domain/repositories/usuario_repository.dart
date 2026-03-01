import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/usuario_entity.dart';

abstract class UsuarioRepository {
  Future<Either<Failure, Unit>> insertUsuario(UsuarioEntity usuario);

  Future<Either<Failure, Unit>> updateUsuario(UsuarioEntity usuario);

  Future<Either<Failure, UsuarioEntity?>> getUsuario(String id);

  Future<Either<Failure, Unit>> deleteUsuario(String id);

  Future<Either<Failure, List<UsuarioEntity>>> getAllUsuarios();
}
