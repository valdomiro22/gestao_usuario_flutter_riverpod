import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';

abstract class UsuarioStorageRepository {
  Future<Either<Failure, String?>> insertArquivo({required File file, required String usuarioId});

  Future<Either<Failure, String?>> getArquivo(String arquivoUrl);

  Future<Either<Failure, Unit>> deleteArquivo(String arquivoUrl);

  Future<Either<Failure, List<String>>> getAllArquivos(String usuarioId);
}
