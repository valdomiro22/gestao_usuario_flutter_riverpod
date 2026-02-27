import 'dart:io';

import 'package:feature_autentication/data/datasource/usuario_storage_datasource.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;

import '../../core/error/exception.dart';

class UsuarioStorageDatasourceImpl implements UsuarioStorageDatasource {
  final FirebaseStorage _storage;

  UsuarioStorageDatasourceImpl(this._storage);

  final _usuariosCollection = 'usuarios';
  final _fotoPerfilCollection = 'foto_perfil';

  @override
  Future<String?> insertArquivo({required File foto, required String usuarioId}) async {
    try {
      final fileName = '${DateTime.now().microsecondsSinceEpoch}_${path.basename(foto.path)}';

      final ref = _storage
          .ref()
          .child(_usuariosCollection)
          .child(usuarioId)
          .child(_fotoPerfilCollection)
          .child(fileName);

      // 1. Faz o upload
      await ref.putFile(foto);

      // 2. BUSCA A URL GERADA
      final url = await ref.getDownloadURL();

      // 3. RETORNA A URL
      return url;
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
        case 'unauthorized':
          throw StorageException('Permissão negada nas regras do Storage');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'quota-exceeded':
          throw UnexpectedException('Limite de uso do Storage excedido');
        case 'retry-limit-exceeded':
        case 'unavailable':
        case 'deadline-exceeded':
        case 'unknown':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'canceled':
          throw UnexpectedException('Upload cancelado');
        case 'invalid-argument':
          throw StorageException('Dados inválidos enviados');
        case 'bucket-not-found':
        case 'project-not-found':
          throw UnexpectedException('Configuração do Firebase Storage inválida');
        default:
          throw StorageException(e.message ?? 'Erro no Storage: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao salvar arquivo no Storage: ${e.toString()}');
    }
  }

  @override
  Future<void> deleteArquivo(String arquivoUrl) async {
    try {
      final ref = _storage.refFromURL(arquivoUrl);
      await ref.delete();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'permission-denied':
        case 'unauthorized':
          throw StorageException('Permissão negada nas regras do Storage');
        case 'object-not-found':
          throw StorageException('Arquivo não encontrado');
        case 'quota-exceeded':
          throw UnexpectedException('Limite de uso do Storage excedido');
        case 'retry-limit-exceeded':
        case 'unavailable':
        case 'deadline-exceeded':
        case 'unknown':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'canceled':
          throw UnexpectedException('Operação cancelada');
        case 'bucket-not-found':
        case 'project-not-found':
          throw UnexpectedException('Configuração do Firebase Storage inválida');
        case 'invalid-argument':
          throw StorageException('Parâmetros inválidos');
        default:
          throw StorageException(e.message ?? 'Erro no Storage: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao deletar arquivo no Storage: ${e.toString()}');
    }
  }

  @override
  Future<List<String>> getAllArquivos(String usuarioId) async {
    try {
      final ref = _storage
          .ref()
          .child(_usuariosCollection)
          .child(usuarioId)
          .child(_fotoPerfilCollection);

      final result = await ref.listAll();

      final urls = <String>[];

      for (final item in result.items) {
        final url = await item.getDownloadURL();
        urls.add(url);
      }

      return urls;
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'permission-denied':
        case 'unauthorized':
          throw StorageException('Permissão negada nas regras do Storage');
        case 'object-not-found':
          return <String>[];
        case 'quota-exceeded':
          throw UnexpectedException('Limite de uso do Storage excedido');
        case 'retry-limit-exceeded':
        case 'unavailable':
        case 'deadline-exceeded':
        case 'unknown':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'bucket-not-found':
        case 'project-not-found':
          throw UnexpectedException('Configuração do Firebase Storage inválida');
        case 'invalid-argument':
          throw StorageException('Parâmetros inválidos');
        default:
          throw StorageException(e.message ?? 'Erro no Storage: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao listar arquivos do Storage: ${e.toString()}');
    }
  }

  @override
  Future<String?> getArquivo(String arquivoUrl) async {
    try {
      final ref = _storage.refFromURL(arquivoUrl);
      final url = await ref.getDownloadURL();
      return url;
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'permission-denied':
        case 'unauthorized':
          throw StorageException('Permissão negada nas regras do Storage');
        case 'object-not-found':
          return null;
        case 'quota-exceeded':
          throw UnexpectedException('Limite de uso do Storage excedido');
        case 'retry-limit-exceeded':
        case 'unavailable':
        case 'deadline-exceeded':
        case 'unknown':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'bucket-not-found':
        case 'project-not-found':
          throw UnexpectedException('Configuração do Firebase Storage inválida');
        case 'invalid-argument':
          throw StorageException('Parâmetros inválidos');
        default:
          throw StorageException(e.message ?? 'Erro no Storage: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao buscar arquivo no Storage: ${e.toString()}');
    }
  }
}
