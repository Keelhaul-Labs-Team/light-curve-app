// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  ServerError serverError(Object err) {
    return ServerError(
      err,
    );
  }

  InternalError internalError() {
    return const InternalError();
  }

  AccountDisabled accountDisabled() {
    return const AccountDisabled();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(Object err) serverError,
    required TResult Function() internalError,
    required TResult Function() accountDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? accountDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(AccountDisabled value) accountDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(AccountDisabled value)? accountDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(Object err) serverError,
    required TResult Function() internalError,
    required TResult Function() accountDisabled,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? accountDisabled,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(AccountDisabled value) accountDisabled,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(AccountDisabled value)? accountDisabled,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({Object err});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(ServerError(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError(this.err);

  @override
  final Object err;

  @override
  String toString() {
    return 'AuthFailure.serverError(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerError &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(err);

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(Object err) serverError,
    required TResult Function() internalError,
    required TResult Function() accountDisabled,
  }) {
    return serverError(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? accountDisabled,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(AccountDisabled value) accountDisabled,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(AccountDisabled value)? accountDisabled,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError(Object err) = _$ServerError;

  Object get err => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalErrorCopyWith<$Res> {
  factory $InternalErrorCopyWith(
          InternalError value, $Res Function(InternalError) then) =
      _$InternalErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InternalErrorCopyWith<$Res> {
  _$InternalErrorCopyWithImpl(
      InternalError _value, $Res Function(InternalError) _then)
      : super(_value, (v) => _then(v as InternalError));

  @override
  InternalError get _value => super._value as InternalError;
}

/// @nodoc

class _$InternalError implements InternalError {
  const _$InternalError();

  @override
  String toString() {
    return 'AuthFailure.internalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(Object err) serverError,
    required TResult Function() internalError,
    required TResult Function() accountDisabled,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? accountDisabled,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(AccountDisabled value) accountDisabled,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(AccountDisabled value)? accountDisabled,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError implements AuthFailure {
  const factory InternalError() = _$InternalError;
}

/// @nodoc
abstract class $AccountDisabledCopyWith<$Res> {
  factory $AccountDisabledCopyWith(
          AccountDisabled value, $Res Function(AccountDisabled) then) =
      _$AccountDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountDisabledCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AccountDisabledCopyWith<$Res> {
  _$AccountDisabledCopyWithImpl(
      AccountDisabled _value, $Res Function(AccountDisabled) _then)
      : super(_value, (v) => _then(v as AccountDisabled));

  @override
  AccountDisabled get _value => super._value as AccountDisabled;
}

/// @nodoc

class _$AccountDisabled implements AccountDisabled {
  const _$AccountDisabled();

  @override
  String toString() {
    return 'AuthFailure.accountDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(Object err) serverError,
    required TResult Function() internalError,
    required TResult Function() accountDisabled,
  }) {
    return accountDisabled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? accountDisabled,
    required TResult orElse(),
  }) {
    if (accountDisabled != null) {
      return accountDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(AccountDisabled value) accountDisabled,
  }) {
    return accountDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(AccountDisabled value)? accountDisabled,
    required TResult orElse(),
  }) {
    if (accountDisabled != null) {
      return accountDisabled(this);
    }
    return orElse();
  }
}

abstract class AccountDisabled implements AuthFailure {
  const factory AccountDisabled() = _$AccountDisabled;
}
