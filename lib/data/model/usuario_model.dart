import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario_model.freezed.dart';
part 'usuario_model.g.dart';

@freezed
sealed class UsuarioModel with _$UsuarioModel {
  const factory UsuarioModel({
    String? id,
    required String nome,
    required String sobrenome,
    required String email,
    required DateTime dataCriacao,
    @Default('') String urlFotoPerfil,
}) = _UsuarioModel;

  factory UsuarioModel.fromJson(Map<String, dynamic> json) => _$UsuarioModelFromJson(json);

  const UsuarioModel._();
}