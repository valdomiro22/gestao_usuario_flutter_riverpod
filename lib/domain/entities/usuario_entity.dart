class UsuarioEntity {
  final String? id;
  final String nome;
  final String sobrenome;
  final String email;
  final DateTime dataCriacao;
  final String urlFotoPerfil;

  UsuarioEntity({
    this.id,
    required this.nome,
    required this.sobrenome,
    required this.email,
    required this.dataCriacao,
    this.urlFotoPerfil = '',
  });

  String get nomeCompleto => '$nome $sobrenome'.trim();

  UsuarioEntity copyWith({
    String? id,
    String? nome,
    String? sobrenome,
    String? email,
    String? urlFotoPerfil,
    DateTime? dataCriacao,
  }) {
    return UsuarioEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      sobrenome: sobrenome ?? this.sobrenome,
      email: email ?? this.email,
      urlFotoPerfil: urlFotoPerfil ?? this.urlFotoPerfil,
      dataCriacao: dataCriacao ?? this.dataCriacao,
    );
  }
}