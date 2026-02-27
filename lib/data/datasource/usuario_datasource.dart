import '../model/usuario_model.dart';

abstract class UsuarioDatasource {
  Future<void> insertUsuario(UsuarioModel usuario);

  Future<void> updateUsuario({required UsuarioModel usuario, required String usuarioId});

  Future<UsuarioModel?> getUsuario(String id);

  Future<void> deleteUsuario(String id);

  Future<List<UsuarioModel>> getAllUsuarios();
}
