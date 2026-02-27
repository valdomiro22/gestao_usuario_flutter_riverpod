import 'dart:io';

abstract class UsuarioStorageDatasource {
  Future<String?> insertArquivo({required File foto, required String usuarioId});

  Future<String?> getArquivo(String arquivoUrl);

  Future<void> deleteArquivo(String arquivoUrl);

  Future<List<String>> getAllArquivos(String usuarioId);
}
