// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'publish_succes_and_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PublishFailureTearOff {
  const _$PublishFailureTearOff();

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

  NotCalculated notCalculated() {
    return const NotCalculated();
  }

  NotPublished notPublished() {
    return const NotPublished();
  }
}

/// @nodoc
const $PublishFailure = _$PublishFailureTearOff();

/// @nodoc
mixin _$PublishFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(Object err) serverError,
    required TResult Function() internalError,
    required TResult Function() notCalculated,
    required TResult Function() notPublished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? notCalculated,
    TResult Function()? notPublished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(NotCalculated value) notCalculated,
    required TResult Function(NotPublished value) notPublished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(NotCalculated value)? notCalculated,
    TResult Function(NotPublished value)? notPublished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishFailureCopyWith<$Res> {
  factory $PublishFailureCopyWith(
          PublishFailure value, $Res Function(PublishFailure) then) =
      _$PublishFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PublishFailureCopyWithImpl<$Res>
    implements $PublishFailureCopyWith<$Res> {
  _$PublishFailureCopyWithImpl(this._value, this._then);

  final PublishFailure _value;
  // ignore: unused_field
  final $Res Function(PublishFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$PublishFailureCopyWithImpl<$Res>
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
    return 'PublishFailure.cancelledByUser()';
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
    required TResult Function() notCalculated,
    required TResult Function() notPublished,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? notCalculated,
    TResult Function()? notPublished,
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
    required TResult Function(NotCalculated value) notCalculated,
    required TResult Function(NotPublished value) notPublished,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(NotCalculated value)? notCalculated,
    TResult Function(NotPublished value)? notPublished,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements PublishFailure {
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
class _$ServerErrorCopyWithImpl<$Res> extends _$PublishFailureCopyWithImpl<$Res>
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
    return 'PublishFailure.serverError(err: $err)';
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
    required TResult Function() notCalculated,
    required TResult Function() notPublished,
  }) {
    return serverError(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? notCalculated,
    TResult Function()? notPublished,
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
    required TResult Function(NotCalculated value) notCalculated,
    required TResult Function(NotPublished value) notPublished,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(NotCalculated value)? notCalculated,
    TResult Function(NotPublished value)? notPublished,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements PublishFailure {
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
class _$InternalErrorCopyWithImpl<$Res>
    extends _$PublishFailureCopyWithImpl<$Res>
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
    return 'PublishFailure.internalError()';
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
    required TResult Function() notCalculated,
    required TResult Function() notPublished,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? notCalculated,
    TResult Function()? notPublished,
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
    required TResult Function(NotCalculated value) notCalculated,
    required TResult Function(NotPublished value) notPublished,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(NotCalculated value)? notCalculated,
    TResult Function(NotPublished value)? notPublished,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError implements PublishFailure {
  const factory InternalError() = _$InternalError;
}

/// @nodoc
abstract class $NotCalculatedCopyWith<$Res> {
  factory $NotCalculatedCopyWith(
          NotCalculated value, $Res Function(NotCalculated) then) =
      _$NotCalculatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotCalculatedCopyWithImpl<$Res>
    extends _$PublishFailureCopyWithImpl<$Res>
    implements $NotCalculatedCopyWith<$Res> {
  _$NotCalculatedCopyWithImpl(
      NotCalculated _value, $Res Function(NotCalculated) _then)
      : super(_value, (v) => _then(v as NotCalculated));

  @override
  NotCalculated get _value => super._value as NotCalculated;
}

/// @nodoc

class _$NotCalculated implements NotCalculated {
  const _$NotCalculated();

  @override
  String toString() {
    return 'PublishFailure.notCalculated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotCalculated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(Object err) serverError,
    required TResult Function() internalError,
    required TResult Function() notCalculated,
    required TResult Function() notPublished,
  }) {
    return notCalculated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? notCalculated,
    TResult Function()? notPublished,
    required TResult orElse(),
  }) {
    if (notCalculated != null) {
      return notCalculated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(NotCalculated value) notCalculated,
    required TResult Function(NotPublished value) notPublished,
  }) {
    return notCalculated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(NotCalculated value)? notCalculated,
    TResult Function(NotPublished value)? notPublished,
    required TResult orElse(),
  }) {
    if (notCalculated != null) {
      return notCalculated(this);
    }
    return orElse();
  }
}

abstract class NotCalculated implements PublishFailure {
  const factory NotCalculated() = _$NotCalculated;
}

/// @nodoc
abstract class $NotPublishedCopyWith<$Res> {
  factory $NotPublishedCopyWith(
          NotPublished value, $Res Function(NotPublished) then) =
      _$NotPublishedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotPublishedCopyWithImpl<$Res>
    extends _$PublishFailureCopyWithImpl<$Res>
    implements $NotPublishedCopyWith<$Res> {
  _$NotPublishedCopyWithImpl(
      NotPublished _value, $Res Function(NotPublished) _then)
      : super(_value, (v) => _then(v as NotPublished));

  @override
  NotPublished get _value => super._value as NotPublished;
}

/// @nodoc

class _$NotPublished implements NotPublished {
  const _$NotPublished();

  @override
  String toString() {
    return 'PublishFailure.notPublished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotPublished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function(Object err) serverError,
    required TResult Function() internalError,
    required TResult Function() notCalculated,
    required TResult Function() notPublished,
  }) {
    return notPublished();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function(Object err)? serverError,
    TResult Function()? internalError,
    TResult Function()? notCalculated,
    TResult Function()? notPublished,
    required TResult orElse(),
  }) {
    if (notPublished != null) {
      return notPublished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(NotCalculated value) notCalculated,
    required TResult Function(NotPublished value) notPublished,
  }) {
    return notPublished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(NotCalculated value)? notCalculated,
    TResult Function(NotPublished value)? notPublished,
    required TResult orElse(),
  }) {
    if (notPublished != null) {
      return notPublished(this);
    }
    return orElse();
  }
}

abstract class NotPublished implements PublishFailure {
  const factory NotPublished() = _$NotPublished;
}

/// @nodoc
class _$PublishSuccesTearOff {
  const _$PublishSuccesTearOff();

  LoadSucces loadSucces() {
    return const LoadSucces();
  }

  CalculatedSucces calculatedSucces() {
    return const CalculatedSucces();
  }

  UploadhSucces uploadSucces() {
    return const UploadhSucces();
  }
}

/// @nodoc
const $PublishSucces = _$PublishSuccesTearOff();

/// @nodoc
mixin _$PublishSucces {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSucces,
    required TResult Function() calculatedSucces,
    required TResult Function() uploadSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSucces,
    TResult Function()? calculatedSucces,
    TResult Function()? uploadSucces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSucces value) loadSucces,
    required TResult Function(CalculatedSucces value) calculatedSucces,
    required TResult Function(UploadhSucces value) uploadSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSucces value)? loadSucces,
    TResult Function(CalculatedSucces value)? calculatedSucces,
    TResult Function(UploadhSucces value)? uploadSucces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishSuccesCopyWith<$Res> {
  factory $PublishSuccesCopyWith(
          PublishSucces value, $Res Function(PublishSucces) then) =
      _$PublishSuccesCopyWithImpl<$Res>;
}

/// @nodoc
class _$PublishSuccesCopyWithImpl<$Res>
    implements $PublishSuccesCopyWith<$Res> {
  _$PublishSuccesCopyWithImpl(this._value, this._then);

  final PublishSucces _value;
  // ignore: unused_field
  final $Res Function(PublishSucces) _then;
}

/// @nodoc
abstract class $LoadSuccesCopyWith<$Res> {
  factory $LoadSuccesCopyWith(
          LoadSucces value, $Res Function(LoadSucces) then) =
      _$LoadSuccesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadSuccesCopyWithImpl<$Res> extends _$PublishSuccesCopyWithImpl<$Res>
    implements $LoadSuccesCopyWith<$Res> {
  _$LoadSuccesCopyWithImpl(LoadSucces _value, $Res Function(LoadSucces) _then)
      : super(_value, (v) => _then(v as LoadSucces));

  @override
  LoadSucces get _value => super._value as LoadSucces;
}

/// @nodoc

class _$LoadSucces implements LoadSucces {
  const _$LoadSucces();

  @override
  String toString() {
    return 'PublishSucces.loadSucces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadSucces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSucces,
    required TResult Function() calculatedSucces,
    required TResult Function() uploadSucces,
  }) {
    return loadSucces();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSucces,
    TResult Function()? calculatedSucces,
    TResult Function()? uploadSucces,
    required TResult orElse(),
  }) {
    if (loadSucces != null) {
      return loadSucces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSucces value) loadSucces,
    required TResult Function(CalculatedSucces value) calculatedSucces,
    required TResult Function(UploadhSucces value) uploadSucces,
  }) {
    return loadSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSucces value)? loadSucces,
    TResult Function(CalculatedSucces value)? calculatedSucces,
    TResult Function(UploadhSucces value)? uploadSucces,
    required TResult orElse(),
  }) {
    if (loadSucces != null) {
      return loadSucces(this);
    }
    return orElse();
  }
}

abstract class LoadSucces implements PublishSucces {
  const factory LoadSucces() = _$LoadSucces;
}

/// @nodoc
abstract class $CalculatedSuccesCopyWith<$Res> {
  factory $CalculatedSuccesCopyWith(
          CalculatedSucces value, $Res Function(CalculatedSucces) then) =
      _$CalculatedSuccesCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalculatedSuccesCopyWithImpl<$Res>
    extends _$PublishSuccesCopyWithImpl<$Res>
    implements $CalculatedSuccesCopyWith<$Res> {
  _$CalculatedSuccesCopyWithImpl(
      CalculatedSucces _value, $Res Function(CalculatedSucces) _then)
      : super(_value, (v) => _then(v as CalculatedSucces));

  @override
  CalculatedSucces get _value => super._value as CalculatedSucces;
}

/// @nodoc

class _$CalculatedSucces implements CalculatedSucces {
  const _$CalculatedSucces();

  @override
  String toString() {
    return 'PublishSucces.calculatedSucces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CalculatedSucces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSucces,
    required TResult Function() calculatedSucces,
    required TResult Function() uploadSucces,
  }) {
    return calculatedSucces();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSucces,
    TResult Function()? calculatedSucces,
    TResult Function()? uploadSucces,
    required TResult orElse(),
  }) {
    if (calculatedSucces != null) {
      return calculatedSucces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSucces value) loadSucces,
    required TResult Function(CalculatedSucces value) calculatedSucces,
    required TResult Function(UploadhSucces value) uploadSucces,
  }) {
    return calculatedSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSucces value)? loadSucces,
    TResult Function(CalculatedSucces value)? calculatedSucces,
    TResult Function(UploadhSucces value)? uploadSucces,
    required TResult orElse(),
  }) {
    if (calculatedSucces != null) {
      return calculatedSucces(this);
    }
    return orElse();
  }
}

abstract class CalculatedSucces implements PublishSucces {
  const factory CalculatedSucces() = _$CalculatedSucces;
}

/// @nodoc
abstract class $UploadhSuccesCopyWith<$Res> {
  factory $UploadhSuccesCopyWith(
          UploadhSucces value, $Res Function(UploadhSucces) then) =
      _$UploadhSuccesCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadhSuccesCopyWithImpl<$Res>
    extends _$PublishSuccesCopyWithImpl<$Res>
    implements $UploadhSuccesCopyWith<$Res> {
  _$UploadhSuccesCopyWithImpl(
      UploadhSucces _value, $Res Function(UploadhSucces) _then)
      : super(_value, (v) => _then(v as UploadhSucces));

  @override
  UploadhSucces get _value => super._value as UploadhSucces;
}

/// @nodoc

class _$UploadhSucces implements UploadhSucces {
  const _$UploadhSucces();

  @override
  String toString() {
    return 'PublishSucces.uploadSucces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UploadhSucces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSucces,
    required TResult Function() calculatedSucces,
    required TResult Function() uploadSucces,
  }) {
    return uploadSucces();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSucces,
    TResult Function()? calculatedSucces,
    TResult Function()? uploadSucces,
    required TResult orElse(),
  }) {
    if (uploadSucces != null) {
      return uploadSucces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSucces value) loadSucces,
    required TResult Function(CalculatedSucces value) calculatedSucces,
    required TResult Function(UploadhSucces value) uploadSucces,
  }) {
    return uploadSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSucces value)? loadSucces,
    TResult Function(CalculatedSucces value)? calculatedSucces,
    TResult Function(UploadhSucces value)? uploadSucces,
    required TResult orElse(),
  }) {
    if (uploadSucces != null) {
      return uploadSucces(this);
    }
    return orElse();
  }
}

abstract class UploadhSucces implements PublishSucces {
  const factory UploadhSucces() = _$UploadhSucces;
}
