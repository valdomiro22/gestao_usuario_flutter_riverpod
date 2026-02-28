// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alterar_nome_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlterarNomeState {

 String get nome; String get sobreNome; String? get erro; String? get erroNome; String? get erroSobreNome; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of AlterarNomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlterarNomeStateCopyWith<AlterarNomeState> get copyWith => _$AlterarNomeStateCopyWithImpl<AlterarNomeState>(this as AlterarNomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlterarNomeState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobreNome, sobreNome) || other.sobreNome == sobreNome)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroSobreNome, erroSobreNome) || other.erroSobreNome == erroSobreNome)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,sobreNome,erro,erroNome,erroSobreNome,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AlterarNomeState(nome: $nome, sobreNome: $sobreNome, erro: $erro, erroNome: $erroNome, erroSobreNome: $erroSobreNome, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AlterarNomeStateCopyWith<$Res>  {
  factory $AlterarNomeStateCopyWith(AlterarNomeState value, $Res Function(AlterarNomeState) _then) = _$AlterarNomeStateCopyWithImpl;
@useResult
$Res call({
 String nome, String sobreNome, String? erro, String? erroNome, String? erroSobreNome, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$AlterarNomeStateCopyWithImpl<$Res>
    implements $AlterarNomeStateCopyWith<$Res> {
  _$AlterarNomeStateCopyWithImpl(this._self, this._then);

  final AlterarNomeState _self;
  final $Res Function(AlterarNomeState) _then;

/// Create a copy of AlterarNomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? sobreNome = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroSobreNome = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobreNome: null == sobreNome ? _self.sobreNome : sobreNome // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroSobreNome: freezed == erroSobreNome ? _self.erroSobreNome : erroSobreNome // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlterarNomeState].
extension AlterarNomeStatePatterns on AlterarNomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlterarNomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlterarNomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlterarNomeState value)  $default,){
final _that = this;
switch (_that) {
case _AlterarNomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlterarNomeState value)?  $default,){
final _that = this;
switch (_that) {
case _AlterarNomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nome,  String sobreNome,  String? erro,  String? erroNome,  String? erroSobreNome,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlterarNomeState() when $default != null:
return $default(_that.nome,_that.sobreNome,_that.erro,_that.erroNome,_that.erroSobreNome,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nome,  String sobreNome,  String? erro,  String? erroNome,  String? erroSobreNome,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AlterarNomeState():
return $default(_that.nome,_that.sobreNome,_that.erro,_that.erroNome,_that.erroSobreNome,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nome,  String sobreNome,  String? erro,  String? erroNome,  String? erroSobreNome,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AlterarNomeState() when $default != null:
return $default(_that.nome,_that.sobreNome,_that.erro,_that.erroNome,_that.erroSobreNome,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AlterarNomeState implements AlterarNomeState {
  const _AlterarNomeState({this.nome = '', this.sobreNome = '', this.erro, this.erroNome, this.erroSobreNome, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  String nome;
@override@JsonKey() final  String sobreNome;
@override final  String? erro;
@override final  String? erroNome;
@override final  String? erroSobreNome;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AlterarNomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlterarNomeStateCopyWith<_AlterarNomeState> get copyWith => __$AlterarNomeStateCopyWithImpl<_AlterarNomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlterarNomeState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.sobreNome, sobreNome) || other.sobreNome == sobreNome)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroSobreNome, erroSobreNome) || other.erroSobreNome == erroSobreNome)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,sobreNome,erro,erroNome,erroSobreNome,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AlterarNomeState(nome: $nome, sobreNome: $sobreNome, erro: $erro, erroNome: $erroNome, erroSobreNome: $erroSobreNome, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AlterarNomeStateCopyWith<$Res> implements $AlterarNomeStateCopyWith<$Res> {
  factory _$AlterarNomeStateCopyWith(_AlterarNomeState value, $Res Function(_AlterarNomeState) _then) = __$AlterarNomeStateCopyWithImpl;
@override @useResult
$Res call({
 String nome, String sobreNome, String? erro, String? erroNome, String? erroSobreNome, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$AlterarNomeStateCopyWithImpl<$Res>
    implements _$AlterarNomeStateCopyWith<$Res> {
  __$AlterarNomeStateCopyWithImpl(this._self, this._then);

  final _AlterarNomeState _self;
  final $Res Function(_AlterarNomeState) _then;

/// Create a copy of AlterarNomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? sobreNome = null,Object? erro = freezed,Object? erroNome = freezed,Object? erroSobreNome = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_AlterarNomeState(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,sobreNome: null == sobreNome ? _self.sobreNome : sobreNome // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroSobreNome: freezed == erroSobreNome ? _self.erroSobreNome : erroSobreNome // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
