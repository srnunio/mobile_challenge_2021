// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestFailureTearOff {
  const _$RequestFailureTearOff();

  _NetworkFailure networkError() {
    return _NetworkFailure();
  }

  _ServerError serverError() {
    return _ServerError();
  }

  _EmptyResult emptyResult() {
    return _EmptyResult();
  }
}

/// @nodoc
const $RequestFailure = _$RequestFailureTearOff();

/// @nodoc
mixin _$RequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() emptyResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmptyResult value) emptyResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFailureCopyWith<$Res> {
  factory $RequestFailureCopyWith(
          RequestFailure value, $Res Function(RequestFailure) then) =
      _$RequestFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFailureCopyWithImpl<$Res>
    implements $RequestFailureCopyWith<$Res> {
  _$RequestFailureCopyWithImpl(this._value, this._then);

  final RequestFailure _value;
  // ignore: unused_field
  final $Res Function(RequestFailure) _then;
}

/// @nodoc
abstract class _$NetworkFailureCopyWith<$Res> {
  factory _$NetworkFailureCopyWith(
          _NetworkFailure value, $Res Function(_NetworkFailure) then) =
      __$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$NetworkFailureCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements _$NetworkFailureCopyWith<$Res> {
  __$NetworkFailureCopyWithImpl(
      _NetworkFailure _value, $Res Function(_NetworkFailure) _then)
      : super(_value, (v) => _then(v as _NetworkFailure));

  @override
  _NetworkFailure get _value => super._value as _NetworkFailure;
}

/// @nodoc

class _$_NetworkFailure implements _NetworkFailure {
  _$_NetworkFailure();

  @override
  String toString() {
    return 'RequestFailure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() emptyResult,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmptyResult value) emptyResult,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements RequestFailure {
  factory _NetworkFailure() = _$_NetworkFailure;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  _$_ServerError();

  @override
  String toString() {
    return 'RequestFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() emptyResult,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmptyResult value) emptyResult,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements RequestFailure {
  factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$EmptyResultCopyWith<$Res> {
  factory _$EmptyResultCopyWith(
          _EmptyResult value, $Res Function(_EmptyResult) then) =
      __$EmptyResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyResultCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res>
    implements _$EmptyResultCopyWith<$Res> {
  __$EmptyResultCopyWithImpl(
      _EmptyResult _value, $Res Function(_EmptyResult) _then)
      : super(_value, (v) => _then(v as _EmptyResult));

  @override
  _EmptyResult get _value => super._value as _EmptyResult;
}

/// @nodoc

class _$_EmptyResult implements _EmptyResult {
  _$_EmptyResult();

  @override
  String toString() {
    return 'RequestFailure.emptyResult()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmptyResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() emptyResult,
  }) {
    return emptyResult();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? emptyResult,
    required TResult orElse(),
  }) {
    if (emptyResult != null) {
      return emptyResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmptyResult value) emptyResult,
  }) {
    return emptyResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmptyResult value)? emptyResult,
    required TResult orElse(),
  }) {
    if (emptyResult != null) {
      return emptyResult(this);
    }
    return orElse();
  }
}

abstract class _EmptyResult implements RequestFailure {
  factory _EmptyResult() = _$_EmptyResult;
}
