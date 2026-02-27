import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/repositories/usuario_storage_repository.dart';
import '../datasource/usuario_storage_datasource.dart';

class UsuarioStorageRepositoryImpl implements UsuarioStorageRepository {
  final UsuarioStorageDatasource _datasource;

  UsuarioStorageRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, String?>> insertArquivo({
    required File file,
    required String usuarioId,
  }) async {
    try {
      final result = await _datasource.insertArquivo(foto: file, usuarioId: usuarioId);
      return Right(result);
    } catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteArquivo(String arquivoUrl) async {
    try {
      await _datasource.deleteArquivo(arquivoUrl);
      return const Right(unit);
    } catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAllArquivos(String usuarioId) async {
    try {
      final result = await _datasource.getAllArquivos(usuarioId);
      return Right(result);
    } catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, String?>> getArquivo(String arquivoUrl) async {
    try {
      final result = await _datasource.getArquivo(arquivoUrl);
      return Right(result);
    } catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  Failure _mapExceptionToFailure(Object e) {
    if (e is AuthException) {
      return AuthFailure(e.message);
    }
    if (e is NetworkException) {
      return NetworkFailure(e.message);
    }
    if (e is StorageException) {
      return StorageFailure(e.message);
    }
    if (e is UnexpectedException) {
      return UnexpectedFailure(e.message);
    }
    return UnexpectedFailure(e.toString());
  }
}
