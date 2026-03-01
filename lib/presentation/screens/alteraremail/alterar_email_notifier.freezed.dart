// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alterar_email_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlterarEmailState {

 String get newEmail; String get password; String? get erro; String? get erroNewEmail; String? get erroPassword; bool get isLoading; bool get isSucess; bool get camposValidos;
/// Create a copy of AlterarEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlterarEmailStateCopyWith<AlterarEmailState> get copyWith => _$AlterarEmailStateCopyWithImpl<AlterarEmailState>(this as AlterarEmailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlterarEmailState&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.password, password) || other.password == password)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNewEmail, erroNewEmail) || other.erroNewEmail == erroNewEmail)&&(identical(other.erroPassword, erroPassword) || other.erroPassword == erroPassword)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,newEmail,password,erro,erroNewEmail,erroPassword,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AlterarEmailState(newEmail: $newEmail, password: $password, erro: $erro, erroNewEmail: $erroNewEmail, erroPassword: $erroPassword, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AlterarEmailStateCopyWith<$Res>  {
  factory $AlterarEmailStateCopyWith(AlterarEmailState value, $Res Function(AlterarEmailState) _then) = _$AlterarEmailStateCopyWithImpl;
@useResult
$Res call({
 String newEmail, String password, String? erro, String? erroNewEmail, String? erroPassword, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class _$AlterarEmailStateCopyWithImpl<$Res>
    implements $AlterarEmailStateCopyWith<$Res> {
  _$AlterarEmailStateCopyWithImpl(this._self, this._then);

  final AlterarEmailState _self;
  final $Res Function(AlterarEmailState) _then;

/// Create a copy of AlterarEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newEmail = null,Object? password = null,Object? erro = freezed,Object? erroNewEmail = freezed,Object? erroPassword = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNewEmail: freezed == erroNewEmail ? _self.erroNewEmail : erroNewEmail // ignore: cast_nullable_to_non_nullable
as String?,erroPassword: freezed == erroPassword ? _self.erroPassword : erroPassword // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlterarEmailState].
extension AlterarEmailStatePatterns on AlterarEmailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlterarEmailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlterarEmailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlterarEmailState value)  $default,){
final _that = this;
switch (_that) {
case _AlterarEmailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlterarEmailState value)?  $default,){
final _that = this;
switch (_that) {
case _AlterarEmailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String newEmail,  String password,  String? erro,  String? erroNewEmail,  String? erroPassword,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlterarEmailState() when $default != null:
return $default(_that.newEmail,_that.password,_that.erro,_that.erroNewEmail,_that.erroPassword,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String newEmail,  String password,  String? erro,  String? erroNewEmail,  String? erroPassword,  bool isLoading,  bool isSucess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AlterarEmailState():
return $default(_that.newEmail,_that.password,_that.erro,_that.erroNewEmail,_that.erroPassword,_that.isLoading,_that.isSucess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String newEmail,  String password,  String? erro,  String? erroNewEmail,  String? erroPassword,  bool isLoading,  bool isSucess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AlterarEmailState() when $default != null:
return $default(_that.newEmail,_that.password,_that.erro,_that.erroNewEmail,_that.erroPassword,_that.isLoading,_that.isSucess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AlterarEmailState implements AlterarEmailState {
  const _AlterarEmailState({this.newEmail = '', this.password = '', this.erro, this.erroNewEmail, this.erroPassword, this.isLoading = false, this.isSucess = false, this.camposValidos = false});
  

@override@JsonKey() final  String newEmail;
@override@JsonKey() final  String password;
@override final  String? erro;
@override final  String? erroNewEmail;
@override final  String? erroPassword;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSucess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AlterarEmailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlterarEmailStateCopyWith<_AlterarEmailState> get copyWith => __$AlterarEmailStateCopyWithImpl<_AlterarEmailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlterarEmailState&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.password, password) || other.password == password)&&(identical(other.erro, erro) || other.erro == erro)&&(identical(other.erroNewEmail, erroNewEmail) || other.erroNewEmail == erroNewEmail)&&(identical(other.erroPassword, erroPassword) || other.erroPassword == erroPassword)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSucess, isSucess) || other.isSucess == isSucess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,newEmail,password,erro,erroNewEmail,erroPassword,isLoading,isSucess,camposValidos);

@override
String toString() {
  return 'AlterarEmailState(newEmail: $newEmail, password: $password, erro: $erro, erroNewEmail: $erroNewEmail, erroPassword: $erroPassword, isLoading: $isLoading, isSucess: $isSucess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AlterarEmailStateCopyWith<$Res> implements $AlterarEmailStateCopyWith<$Res> {
  factory _$AlterarEmailStateCopyWith(_AlterarEmailState value, $Res Function(_AlterarEmailState) _then) = __$AlterarEmailStateCopyWithImpl;
@override @useResult
$Res call({
 String newEmail, String password, String? erro, String? erroNewEmail, String? erroPassword, bool isLoading, bool isSucess, bool camposValidos
});




}
/// @nodoc
class __$AlterarEmailStateCopyWithImpl<$Res>
    implements _$AlterarEmailStateCopyWith<$Res> {
  __$AlterarEmailStateCopyWithImpl(this._self, this._then);

  final _AlterarEmailState _self;
  final $Res Function(_AlterarEmailState) _then;

/// Create a copy of AlterarEmailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newEmail = null,Object? password = null,Object? erro = freezed,Object? erroNewEmail = freezed,Object? erroPassword = freezed,Object? isLoading = null,Object? isSucess = null,Object? camposValidos = null,}) {
  return _then(_AlterarEmailState(
newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,erro: freezed == erro ? _self.erro : erro // ignore: cast_nullable_to_non_nullable
as String?,erroNewEmail: freezed == erroNewEmail ? _self.erroNewEmail : erroNewEmail // ignore: cast_nullable_to_non_nullable
as String?,erroPassword: freezed == erroPassword ? _self.erroPassword : erroPassword // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSucess: null == isSucess ? _self.isSucess : isSucess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
