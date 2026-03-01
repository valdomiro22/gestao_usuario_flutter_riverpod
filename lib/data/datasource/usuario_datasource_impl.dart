import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feature_autentication/data/datasource/usuario_datasource.dart';

import '../../core/error/exception.dart';
import '../model/usuario_model.dart';

class UsuarioDatasourceImpl implements UsuarioDatasource {
  final FirebaseFirestore _firestore;

  UsuarioDatasourceImpl(this._firestore);

  final _usuariosCollection = 'usuarios';

  @override
  Future<void> insertUsuario(UsuarioModel usuario) async {
    try {
      final usuarioId = usuario.id;
      await _firestore.collection(_usuariosCollection).doc(usuarioId).set(usuario.toJson());
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada nas regras do Firestore');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'already-exists':
          throw FirestoreException('Esta grade já existe');
        case 'not-found':
          throw FirestoreException('Coleção ou documento não encontrado');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de uso do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('Dados inválidos enviados');
        default:
          throw FirestoreException(e.message ?? 'Erro no Firestore: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao inserir usuario: ${e.toString()}');
    }
  }

  @override
  Future<void> deleteUsuario(String id) async {
    try {
      await _firestore.collection(_usuariosCollection).doc(id).delete();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada nas regras do Firestore');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de uso do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('ID inválido para exclusão');
        default:
          throw FirestoreException(e.message ?? 'Erro ao deletar no Firestore: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao deletar usuario: ${e.toString()}');
    }
  }

  @override
  Future<List<UsuarioModel>> getAllUsuarios() async {
    try {
      final snapshot = await _firestore.collection(_usuariosCollection).get();
      if (snapshot.docs.isEmpty) return [];
      return snapshot.docs.map((doc) => UsuarioModel.fromJson(doc.data())).toList();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para ler os usuario');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de quota do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('Argumentos inválidos na consulta');
        default:
          throw FirestoreException(e.message ?? 'Erro ao buscar dados: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException(
        'datasource -> Erro inesperado ao buscar usuarios: ${e.toString()}',
      );
    }
  }

  @override
  Future<UsuarioModel?> getUsuario(String id) async {
    try {
      final snapshot = await _firestore.collection(_usuariosCollection).doc(id).get();
      if (!snapshot.exists) return null;
      return UsuarioModel.fromJson(snapshot.data()!);
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para atualizar esta usuario');
        case 'not-found':
          throw FirestoreException('Usuario não encontrada para atualização');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de quota do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('Dados ou ID inválidos para atualização');
        default:
          throw FirestoreException(e.message ?? 'Erro ao atualizar usuario: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao atualizar usuario: ${e.toString()}');
    }
  }

  @override
  Future<void> updateUsuario(UsuarioModel usuario) async {
    try {
      await _firestore
          .collection(_usuariosCollection)
          .doc(usuario.id)
          .set(usuario.toJson(), SetOptions(merge: true));
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para atualizar esta usuario');
        case 'not-found':
          throw FirestoreException('Usuario não encontrada para atualização');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de quota do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('Dados ou ID inválidos para atualização');
        default:
          throw FirestoreException(e.message ?? 'Erro ao atualizar usuario: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao atualizar usuario: ${e.toString()}');
    }
  }
}
