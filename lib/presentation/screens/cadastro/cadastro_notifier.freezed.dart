// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cadastro_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CadastroState {

 String get nome; String get sobrenome; String get email; String get senha; String get confirmarSenha; String? get erro; String? get erroNome; String? get erroSobrenome; String? get erroEmail; String? get erroSenha; String? get erroConfirmarSenha; String? get erroDataCriacao; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of CadastroState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CadastroStateCopyWith<CadastroState> get copyWith => _$CadastroStateCopyWithImpl<CadastroState>(this as CadastroState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CadastroState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobrenome, sobrenome) || other.sobrenome == sobrenome)&&(identical(other.email, email) || other.email == email)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.confirmarSenha, confirmarSenha) || other.confirmarSenha == confirmarSenha)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroSobrenome, erroSobrenome) || other.erroSobrenome == erroSobrenome)&&(identical(other.erroEmail, erroEmail) || other.erroEmail == erroEmail)&&(identical(other.erroSenha, erroSenha) || other.erroSenha == erroSenha)&&(identical(other.erroConfirmarSenha, erroConfirmarSenha) || other.erroConfirmarSenha == erroConfirmarSenha)&&(identical(other.erroDataCriacao, erroDataCriacao) || other.erroDataCriacao == erroDataCriacao)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,sobrenome,email,senha,confirmarSenha,erro,erroNome,erroSobrenome,erroEmail,erroSenha,erroConfirmarSenha,erroDataCriacao,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'CadastroState(nome: $nome, sobrenome: $sobrenome, email: $email, senha: $senha, confirmarSenha: $confirmarSenha, erro: $erro, erroNome: $erroNome, erroSobrenome: $erroSobrenome, erroEmail: $erroEmail, erroSenha: $erroSenha, erroConfirmarSenha: $erroConfirmarSenha, erroDataCriacao: $erroDataCriacao, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $CadastroStateCopyWith<$Res>  {
  factory $CadastroStateCopyWith(CadastroState value, $Res Function(CadastroState) _then) = _$CadastroStateCopyWithImpl;
@useResult
$Res call({
 String nome, String sobrenome, String email, String senha, String confirmarSenha, String? erro, String? erroNome, String? erroSobrenome, String? erroEmail, String? erroSenha, String? erroConfirmarSenha, String? erroDataCriacao, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$CadastroStateCopyWithImpl<$Res>
    implements $CadastroStateCopyWith<$Res> {
  _$CadastroStateCopyWithImpl(this._self, this._then);

  final CadastroState _self;
  final $Res Function(CadastroState) _then;

/// Create a copy of CadastroState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? sobrenome = null,Object? email = null,Object? senha = null,Object? confirmarSenha = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroSobrenome = freezed,Object? erroEmail = freezed,Object? erroSenha = freezed,Object? erroConfirmarSenha = freezed,Object? erroDataCriacao = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobrenome: null == sobrenome ? _self.sobrenome : sobrenome // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,confirmarSenha: null == confirmarSenha ? _self.confirmarSenha : confirmarSenha // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroSobrenome: freezed == erroSobrenome ? _self.erroSobrenome : erroSobrenome // ignore: cast_nullable_to_non_nullable
as String?,erroEmail: freezed == erroEmail ? _self.erroEmail : erroEmail // ignore: cast_nullable_to_non_nullable
as String?,erroSenha: freezed == erroSenha ? _self.erroSenha : erroSenha // ignore: cast_nullable_to_non_nullable
as String?,erroConfirmarSenha: freezed == erroConfirmarSenha ? _self.erroConfirmarSenha : erroConfirmarSenha // ignore: cast_nullable_to_non_nullable
as String?,erroDataCriacao: freezed == erroDataCriacao ? _self.erroDataCriacao : erroDataCriacao // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CadastroState].
extension CadastroStatePatterns on CadastroState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CadastroState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CadastroState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CadastroState value)  $default,){
final _that = this;
switch (_that) {
case _CadastroState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CadastroState value)?  $default,){
final _that = this;
switch (_that) {
case _CadastroState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nome,  String sobrenome,  String email,  String senha,  String confirmarSenha,  String? erro,  String? erroNome,  String? erroSobrenome,  String? erroEmail,  String? erroSenha,  String? erroConfirmarSenha,  String? erroDataCriacao,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CadastroState() when $default != null:
return $default(_that.nome,_that.sobrenome,_that.email,_that.senha,_that.confirmarSenha,_that.erro,_that.erroNome,_that.erroSobrenome,_that.erroEmail,_that.erroSenha,_that.erroConfirmarSenha,_that.erroDataCriacao,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nome,  String sobrenome,  String email,  String senha,  String confirmarSenha,  String? erro,  String? erroNome,  String? erroSobrenome,  String? erroEmail,  String? erroSenha,  String? erroConfirmarSenha,  String? erroDataCriacao,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _CadastroState():
return $default(_that.nome,_that.sobrenome,_that.email,_that.senha,_that.confirmarSenha,_that.erro,_that.erroNome,_that.erroSobrenome,_that.erroEmail,_that.erroSenha,_that.erroConfirmarSenha,_that.erroDataCriacao,_that.isLoading,_that.isSucess,_that.camposValidos);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nome,  String sobrenome,  String email,  String senha,  String confirmarSenha,  String? erro,  String? erroNome,  String? erroSobrenome,  String? erroEmail,  String? erroSenha,  String? erroConfirmarSenha,  String? erroDataCriacao,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _CadastroState() when $default != null:
return $default(_that.nome,_that.sobrenome,_that.email,_that.senha,_that.confirmarSenha,_that.erro,_that.erroNome,_that.erroSobrenome,_that.erroEmail,_that.erroSenha,_that.erroConfirmarSenha,_that.erroDataCriacao,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _CadastroState implements CadastroState {
  const _CadastroState({this.nome = '', this.sobrenome = '', this.email = '', this.senha = '', this.confirmarSenha = '', this.erro, this.erroNome, this.erroSobrenome, this.erroEmail, this.erroSenha, this.erroConfirmarSenha, this.erroDataCriacao, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  String nome;
@override@JsonKey() final  String sobrenome;
@override@JsonKey() final  String email;
@override@JsonKey() final  String senha;
@override@JsonKey() final  String confirmarSenha;
@override final  String? erro;
@override final  String? erroNome;
@override final  String? erroSobrenome;
@override final  String? erroEmail;
@override final  String? erroSenha;
@override final  String? erroConfirmarSenha;
@override final  String? erroDataCriacao;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of CadastroState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CadastroStateCopyWith<_CadastroState> get copyWith => __$CadastroStateCopyWithImpl<_CadastroState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CadastroState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobrenome, sobrenome) || other.sobrenome == sobrenome)&&(identical(other.email, email) || other.email == email)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.confirmarSenha, confirmarSenha) || other.confirmarSenha == confirmarSenha)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroSobrenome, erroSobrenome) || other.erroSobrenome == erroSobrenome)&&(identical(other.erroEmail, erroEmail) || other.erroEmail == erroEmail)&&(identical(other.erroSenha, erroSenha) || other.erroSenha == erroSenha)&&(identical(other.erroConfirmarSenha, erroConfirmarSenha) || other.erroConfirmarSenha == erroConfirmarSenha)&&(identical(other.erroDataCriacao, erroDataCriacao) || other.erroDataCriacao == erroDataCriacao)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,sobrenome,email,senha,confirmarSenha,erro,erroNome,erroSobrenome,erroEmail,erroSenha,erroConfirmarSenha,erroDataCriacao,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'CadastroState(nome: $nome, sobrenome: $sobrenome, email: $email, senha: $senha, confirmarSenha: $confirmarSenha, erro: $erro, erroNome: $erroNome, erroSobrenome: $erroSobrenome, erroEmail: $erroEmail, erroSenha: $erroSenha, erroConfirmarSenha: $erroConfirmarSenha, erroDataCriacao: $erroDataCriacao, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$CadastroStateCopyWith<$Res> implements $CadastroStateCopyWith<$Res> {
  factory _$CadastroStateCopyWith(_CadastroState value, $Res Function(_CadastroState) _then) = __$CadastroStateCopyWithImpl;
@override @useResult
$Res call({
 String nome, String sobrenome, String email, String senha, String confirmarSenha, String? erro, String? erroNome, String? erroSobrenome, String? erroEmail, String? erroSenha, String? erroConfirmarSenha, String? erroDataCriacao, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$CadastroStateCopyWithImpl<$Res>
    implements _$CadastroStateCopyWith<$Res> {
  __$CadastroStateCopyWithImpl(this._self, this._then);

  final _CadastroState _self;
  final $Res Function(_CadastroState) _then;

/// Create a copy of CadastroState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? sobrenome = null,Object? email = null,Object? senha = null,Object? confirmarSenha = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroSobrenome = freezed,Object? erroEmail = freezed,Object? erroSenha = freezed,Object? erroConfirmarSenha = freezed,Object? erroDataCriacao = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_CadastroState(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobrenome: null == sobrenome ? _self.sobrenome : sobrenome // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,confirmarSenha: null == confirmarSenha ? _self.confirmarSenha : confirmarSenha // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroSobrenome: freezed == erroSobrenome ? _self.erroSobrenome : erroSobrenome // ignore: cast_nullable_to_non_nullable
as String?,erroEmail: freezed == erroEmail ? _self.erroEmail : erroEmail // ignore: cast_nullable_to_non_nullable
as String?,erroSenha: freezed == erroSenha ? _self.erroSenha : erroSenha // ignore: cast_nullable_to_non_nullable
as String?,erroConfirmarSenha: freezed == erroConfirmarSenha ? _self.erroConfirmarSenha : erroConfirmarSenha // ignore: cast_nullable_to_non_nullable
as String?,erroDataCriacao: freezed == erroDataCriacao ? _self.erroDataCriacao : erroDataCriacao // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
