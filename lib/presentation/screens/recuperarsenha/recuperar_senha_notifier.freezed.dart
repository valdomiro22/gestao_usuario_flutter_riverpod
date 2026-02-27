// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recuperar_senha_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecuperarSenhaState {

 String get email; String? get erro; String? get erroEmail; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of RecuperarSenhaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecuperarSenhaStateCopyWith<RecuperarSenhaState> get copyWith => _$RecuperarSenhaStateCopyWithImpl<RecuperarSenhaState>(this as RecuperarSenhaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecuperarSenhaState&&(identical(other.email, email) || other.email == email)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroEmail, erroEmail) || other.erroEmail == erroEmail)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,email,erro,erroEmail,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'RecuperarSenhaState(email: $email, erro: $erro, erroEmail: $erroEmail, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $RecuperarSenhaStateCopyWith<$Res>  {
  factory $RecuperarSenhaStateCopyWith(RecuperarSenhaState value, $Res Function(RecuperarSenhaState) _then) = _$RecuperarSenhaStateCopyWithImpl;
@useResult
$Res call({
 String email, String? erro, String? erroEmail, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$RecuperarSenhaStateCopyWithImpl<$Res>
    implements $RecuperarSenhaStateCopyWith<$Res> {
  _$RecuperarSenhaStateCopyWithImpl(this._self, this._then);

  final RecuperarSenhaState _self;
  final $Res Function(RecuperarSenhaState) _then;

/// Create a copy of RecuperarSenhaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? erro = freezed,Object? erroEmail = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroEmail: freezed == erroEmail ? _self.erroEmail : erroEmail // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RecuperarSenhaState].
extension RecuperarSenhaStatePatterns on RecuperarSenhaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecuperarSenhaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecuperarSenhaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecuperarSenhaState value)  $default,){
final _that = this;
switch (_that) {
case _RecuperarSenhaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecuperarSenhaState value)?  $default,){
final _that = this;
switch (_that) {
case _RecuperarSenhaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String? erro,  String? erroEmail,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecuperarSenhaState() when $default != null:
return $default(_that.email,_that.erro,_that.erroEmail,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String? erro,  String? erroEmail,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _RecuperarSenhaState():
return $default(_that.email,_that.erro,_that.erroEmail,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String? erro,  String? erroEmail,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _RecuperarSenhaState() when $default != null:
return $default(_that.email,_that.erro,_that.erroEmail,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _RecuperarSenhaState implements RecuperarSenhaState {
  const _RecuperarSenhaState({this.email = '', this.erro, this.erroEmail, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  String email;
@override final  String? erro;
@override final  String? erroEmail;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of RecuperarSenhaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecuperarSenhaStateCopyWith<_RecuperarSenhaState> get copyWith => __$RecuperarSenhaStateCopyWithImpl<_RecuperarSenhaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecuperarSenhaState&&(identical(other.email, email) || other.email == email)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroEmail, erroEmail) || other.erroEmail == erroEmail)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,email,erro,erroEmail,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'RecuperarSenhaState(email: $email, erro: $erro, erroEmail: $erroEmail, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$RecuperarSenhaStateCopyWith<$Res> implements $RecuperarSenhaStateCopyWith<$Res> {
  factory _$RecuperarSenhaStateCopyWith(_RecuperarSenhaState value, $Res Function(_RecuperarSenhaState) _then) = __$RecuperarSenhaStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String? erro, String? erroEmail, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$RecuperarSenhaStateCopyWithImpl<$Res>
    implements _$RecuperarSenhaStateCopyWith<$Res> {
  __$RecuperarSenhaStateCopyWithImpl(this._self, this._then);

  final _RecuperarSenhaState _self;
  final $Res Function(_RecuperarSenhaState) _then;

/// Create a copy of RecuperarSenhaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? erro = freezed,Object? erroEmail = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_RecuperarSenhaState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroEmail: freezed == erroEmail ? _self.erroEmail : erroEmail // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
