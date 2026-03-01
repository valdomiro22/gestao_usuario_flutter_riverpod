// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deletar_conta_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeletarContaState {

 String get email; String get senha; String? get erro; String? get emailErro; String? get senhaErro; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of DeletarContaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletarContaStateCopyWith<DeletarContaState> get copyWith => _$DeletarContaStateCopyWithImpl<DeletarContaState>(this as DeletarContaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletarContaState&&(identical(other.email, email) || other.email == email)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.emailErro, emailErro) || other.emailErro == emailErro)&&(identical(other.senhaErro, senhaErro) || other.senhaErro == senhaErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,email,senha,erro,emailErro,senhaErro,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'DeletarContaState(email: $email, senha: $senha, erro: $erro, emailErro: $emailErro, senhaErro: $senhaErro, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $DeletarContaStateCopyWith<$Res>  {
  factory $DeletarContaStateCopyWith(DeletarContaState value, $Res Function(DeletarContaState) _then) = _$DeletarContaStateCopyWithImpl;
@useResult
$Res call({
 String email, String senha, String? erro, String? emailErro, String? senhaErro, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$DeletarContaStateCopyWithImpl<$Res>
    implements $DeletarContaStateCopyWith<$Res> {
  _$DeletarContaStateCopyWithImpl(this._self, this._then);

  final DeletarContaState _self;
  final $Res Function(DeletarContaState) _then;

/// Create a copy of DeletarContaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? senha = null,Object? erro = freezed,Object? emailErro = freezed,Object? senhaErro = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,emailErro: freezed == emailErro ? _self.emailErro : emailErro // ignore: cast_nullable_to_non_nullable
as String?,senhaErro: freezed == senhaErro ? _self.senhaErro : senhaErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeletarContaState].
extension DeletarContaStatePatterns on DeletarContaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeletarContaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeletarContaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeletarContaState value)  $default,){
final _that = this;
switch (_that) {
case _DeletarContaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeletarContaState value)?  $default,){
final _that = this;
switch (_that) {
case _DeletarContaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String senha,  String? erro,  String? emailErro,  String? senhaErro,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeletarContaState() when $default != null:
return $default(_that.email,_that.senha,_that.erro,_that.emailErro,_that.senhaErro,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String senha,  String? erro,  String? emailErro,  String? senhaErro,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _DeletarContaState():
return $default(_that.email,_that.senha,_that.erro,_that.emailErro,_that.senhaErro,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String senha,  String? erro,  String? emailErro,  String? senhaErro,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _DeletarContaState() when $default != null:
return $default(_that.email,_that.senha,_that.erro,_that.emailErro,_that.senhaErro,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _DeletarContaState implements DeletarContaState {
  const _DeletarContaState({this.email = '', this.senha = '', this.erro, this.emailErro, this.senhaErro, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String senha;
@override final  String? erro;
@override final  String? emailErro;
@override final  String? senhaErro;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of DeletarContaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletarContaStateCopyWith<_DeletarContaState> get copyWith => __$DeletarContaStateCopyWithImpl<_DeletarContaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletarContaState&&(identical(other.email, email) || other.email == email)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.emailErro, emailErro) || other.emailErro == emailErro)&&(identical(other.senhaErro, senhaErro) || other.senhaErro == senhaErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,email,senha,erro,emailErro,senhaErro,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'DeletarContaState(email: $email, senha: $senha, erro: $erro, emailErro: $emailErro, senhaErro: $senhaErro, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$DeletarContaStateCopyWith<$Res> implements $DeletarContaStateCopyWith<$Res> {
  factory _$DeletarContaStateCopyWith(_DeletarContaState value, $Res Function(_DeletarContaState) _then) = __$DeletarContaStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String senha, String? erro, String? emailErro, String? senhaErro, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$DeletarContaStateCopyWithImpl<$Res>
    implements _$DeletarContaStateCopyWith<$Res> {
  __$DeletarContaStateCopyWithImpl(this._self, this._then);

  final _DeletarContaState _self;
  final $Res Function(_DeletarContaState) _then;

/// Create a copy of DeletarContaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? senha = null,Object? erro = freezed,Object? emailErro = freezed,Object? senhaErro = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_DeletarContaState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,emailErro: freezed == emailErro ? _self.emailErro : emailErro // ignore: cast_nullable_to_non_nullable
as String?,senhaErro: freezed == senhaErro ? _self.senhaErro : senhaErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
