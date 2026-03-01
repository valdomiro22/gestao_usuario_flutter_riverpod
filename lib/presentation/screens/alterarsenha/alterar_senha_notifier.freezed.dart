// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alterar_senha_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlterarSenhaState {

 String get novaSenha; String get senhaAtual; String? get erro; String? get erroNovaSenha; String? get erroSenhaAtual; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of AlterarSenhaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlterarSenhaStateCopyWith<AlterarSenhaState> get copyWith => _$AlterarSenhaStateCopyWithImpl<AlterarSenhaState>(this as AlterarSenhaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlterarSenhaState&&(identical(other.novaSenha, novaSenha) || other.novaSenha == novaSenha)&&(identical(other.senhaAtual, senhaAtual) || other.senhaAtual == senhaAtual)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNovaSenha, erroNovaSenha) || other.erroNovaSenha == erroNovaSenha)&&(identical(other.erroSenhaAtual, erroSenhaAtual) || other.erroSenhaAtual == erroSenhaAtual)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,novaSenha,senhaAtual,erro,erroNovaSenha,erroSenhaAtual,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AlterarSenhaState(novaSenha: $novaSenha, senhaAtual: $senhaAtual, erro: $erro, erroNovaSenha: $erroNovaSenha, erroSenhaAtual: $erroSenhaAtual, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AlterarSenhaStateCopyWith<$Res>  {
  factory $AlterarSenhaStateCopyWith(AlterarSenhaState value, $Res Function(AlterarSenhaState) _then) = _$AlterarSenhaStateCopyWithImpl;
@useResult
$Res call({
 String novaSenha, String senhaAtual, String? erro, String? erroNovaSenha, String? erroSenhaAtual, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$AlterarSenhaStateCopyWithImpl<$Res>
    implements $AlterarSenhaStateCopyWith<$Res> {
  _$AlterarSenhaStateCopyWithImpl(this._self, this._then);

  final AlterarSenhaState _self;
  final $Res Function(AlterarSenhaState) _then;

/// Create a copy of AlterarSenhaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? novaSenha = null,Object? senhaAtual = null,Object? erro = freezed,Object? erroNovaSenha = freezed,Object? erroSenhaAtual = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
novaSenha: null == novaSenha ? _self.novaSenha : novaSenha // ignore: cast_nullable_to_non_nullable
as String,senhaAtual: null == senhaAtual ? _self.senhaAtual : senhaAtual // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNovaSenha: freezed == erroNovaSenha ? _self.erroNovaSenha : erroNovaSenha // ignore: cast_nullable_to_non_nullable
as String?,erroSenhaAtual: freezed == erroSenhaAtual ? _self.erroSenhaAtual : erroSenhaAtual // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlterarSenhaState].
extension AlterarSenhaStatePatterns on AlterarSenhaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlterarSenhaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlterarSenhaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlterarSenhaState value)  $default,){
final _that = this;
switch (_that) {
case _AlterarSenhaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlterarSenhaState value)?  $default,){
final _that = this;
switch (_that) {
case _AlterarSenhaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String novaSenha,  String senhaAtual,  String? erro,  String? erroNovaSenha,  String? erroSenhaAtual,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlterarSenhaState() when $default != null:
return $default(_that.novaSenha,_that.senhaAtual,_that.erro,_that.erroNovaSenha,_that.erroSenhaAtual,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String novaSenha,  String senhaAtual,  String? erro,  String? erroNovaSenha,  String? erroSenhaAtual,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AlterarSenhaState():
return $default(_that.novaSenha,_that.senhaAtual,_that.erro,_that.erroNovaSenha,_that.erroSenhaAtual,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String novaSenha,  String senhaAtual,  String? erro,  String? erroNovaSenha,  String? erroSenhaAtual,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AlterarSenhaState() when $default != null:
return $default(_that.novaSenha,_that.senhaAtual,_that.erro,_that.erroNovaSenha,_that.erroSenhaAtual,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AlterarSenhaState implements AlterarSenhaState {
  const _AlterarSenhaState({this.novaSenha = '', this.senhaAtual = '', this.erro, this.erroNovaSenha, this.erroSenhaAtual, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  String novaSenha;
@override@JsonKey() final  String senhaAtual;
@override final  String? erro;
@override final  String? erroNovaSenha;
@override final  String? erroSenhaAtual;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AlterarSenhaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlterarSenhaStateCopyWith<_AlterarSenhaState> get copyWith => __$AlterarSenhaStateCopyWithImpl<_AlterarSenhaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlterarSenhaState&&(identical(other.novaSenha, novaSenha) || other.novaSenha == novaSenha)&&(identical(other.senhaAtual, senhaAtual) || other.senhaAtual == senhaAtual)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNovaSenha, erroNovaSenha) || other.erroNovaSenha == erroNovaSenha)&&(identical(other.erroSenhaAtual, erroSenhaAtual) || other.erroSenhaAtual == erroSenhaAtual)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,novaSenha,senhaAtual,erro,erroNovaSenha,erroSenhaAtual,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AlterarSenhaState(novaSenha: $novaSenha, senhaAtual: $senhaAtual, erro: $erro, erroNovaSenha: $erroNovaSenha, erroSenhaAtual: $erroSenhaAtual, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AlterarSenhaStateCopyWith<$Res> implements $AlterarSenhaStateCopyWith<$Res> {
  factory _$AlterarSenhaStateCopyWith(_AlterarSenhaState value, $Res Function(_AlterarSenhaState) _then) = __$AlterarSenhaStateCopyWithImpl;
@override @useResult
$Res call({
 String novaSenha, String senhaAtual, String? erro, String? erroNovaSenha, String? erroSenhaAtual, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$AlterarSenhaStateCopyWithImpl<$Res>
    implements _$AlterarSenhaStateCopyWith<$Res> {
  __$AlterarSenhaStateCopyWithImpl(this._self, this._then);

  final _AlterarSenhaState _self;
  final $Res Function(_AlterarSenhaState) _then;

/// Create a copy of AlterarSenhaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? novaSenha = null,Object? senhaAtual = null,Object? erro = freezed,Object? erroNovaSenha = freezed,Object? erroSenhaAtual = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_AlterarSenhaState(
novaSenha: null == novaSenha ? _self.novaSenha : novaSenha // ignore: cast_nullable_to_non_nullable
as String,senhaAtual: null == senhaAtual ? _self.senhaAtual : senhaAtual // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNovaSenha: freezed == erroNovaSenha ? _self.erroNovaSenha : erroNovaSenha // ignore: cast_nullable_to_non_nullable
as String?,erroSenhaAtual: freezed == erroSenhaAtual ? _self.erroSenhaAtual : erroSenhaAtual // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
