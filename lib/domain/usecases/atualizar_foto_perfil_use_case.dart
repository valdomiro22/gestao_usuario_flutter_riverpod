import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../repositories/usuario_storage_repository.dart';

class AtualizarFotoPerfilUseCase {
  final UsuarioStorageRepository _repository;

  AtualizarFotoPerfilUseCase(this._repository);

  Future<Either<Failure, String?>> call({
    required File fotoNova,
    required String usuarioId,
    required String fotoAntigaUrl,
  }) async {
    final urlAntiga = (fotoAntigaUrl).trim();

    if (urlAntiga.isEmpty) {
      return _repository.insertArquivo(file: fotoNova, usuarioId: usuarioId);
    }

    final deleteRes = await _repository.deleteArquivo(urlAntiga);

    return deleteRes.fold(
      (failure) => Left(failure),
      (_) => _repository.insertArquivo(file: fotoNova, usuarioId: usuarioId),
    );
  }
}
