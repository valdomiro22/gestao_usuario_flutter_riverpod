// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsuarioModel _$UsuarioModelFromJson(Map<String, dynamic> json) =>
    _UsuarioModel(
      id: json['id'] as String?,
      nome: json['nome'] as String,
      sobrenome: json['sobrenome'] as String,
      email: json['email'] as String,
      dataCriacao: DateTime.parse(json['dataCriacao'] as String),
      urlFotoPerfil: json['urlFotoPerfil'] as String?,
    );

Map<String, dynamic> _$UsuarioModelToJson(_UsuarioModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'sobrenome': instance.sobrenome,
      'email': instance.email,
      'dataCriacao': instance.dataCriacao.toIso8601String(),
      'urlFotoPerfil': instance.urlFotoPerfil,
    };
