import 'package:dartz/dartz.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/entities/usuario_entity.dart';
import '../../domain/repositories/usuario_repository.dart';
import '../datasource/usuario_datasource.dart';
import '../mapper/usuario_mapper.dart';

class UsuarioRepositoryImpl implements UsuarioRepository {
  final UsuarioDatasource _datasource;

  UsuarioRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> insertUsuario(UsuarioEntity usuario) async {
    try {
      final model = usuario.toModel();
      await _datasource.insertUsuario(model);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteUsuario(String id) async {
    try {
      await _datasource.deleteUsuario(id);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, List<UsuarioEntity>>> getAllUsuarios() async {
    try {
      final result = await _datasource.getAllUsuarios();
      final listaEntities = result.map((usr) => usr.toEntity()).toList();
      return Right(listaEntities);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, UsuarioEntity?>> getUsuario(String id) async {
    try {
      final result = await _datasource.getUsuario(id);

      if (result == null) return const Right(null);

      final entity = result.toEntity();
      return Right(entity);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateUsuario(UsuarioEntity usuario) async {
    try {
      final model = usuario.toModel();
      await _datasource.updateUsuario(model);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }
}
