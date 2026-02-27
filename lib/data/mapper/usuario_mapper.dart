import 'package:feature_autentication/data/model/usuario_model.dart';
import 'package:feature_autentication/domain/entities/usuario_entity.dart';

extension UsuarioModelFromEntity on UsuarioModel {
  UsuarioEntity toEntity() {
    return UsuarioEntity(id: id, nome: nome, sobrenome: sobrenome, email: email, dataCriacao: dataCriacao, urlFotoPerfil: urlFotoPerfil);
  }
}

extension UsuarioEntityFromModel on UsuarioEntity {
  UsuarioModel toModel() {
    return UsuarioModel(id: id, nome: nome, sobrenome: sobrenome, email: email, dataCriacao: dataCriacao, urlFotoPerfil: urlFotoPerfil);
  }
}