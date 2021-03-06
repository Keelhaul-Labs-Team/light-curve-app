// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {required AuthState authState,
      required UserState userState,
      required PublishState publishState,
      required BuiltList<VideoDto> videosUsers,
      required BuiltList<VideoDto> videoExamples}) {
    return _AppState(
      authState: authState,
      userState: userState,
      publishState: publishState,
      videosUsers: videosUsers,
      videoExamples: videoExamples,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  AuthState get authState => throw _privateConstructorUsedError;
  UserState get userState => throw _privateConstructorUsedError;
  PublishState get publishState => throw _privateConstructorUsedError;
  BuiltList<VideoDto> get videosUsers => throw _privateConstructorUsedError;
  BuiltList<VideoDto> get videoExamples => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {AuthState authState,
      UserState userState,
      PublishState publishState,
      BuiltList<VideoDto> videosUsers,
      BuiltList<VideoDto> videoExamples});

  $AuthStateCopyWith<$Res> get authState;
  $UserStateCopyWith<$Res> get userState;
  $PublishStateCopyWith<$Res> get publishState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? authState = freezed,
    Object? userState = freezed,
    Object? publishState = freezed,
    Object? videosUsers = freezed,
    Object? videoExamples = freezed,
  }) {
    return _then(_value.copyWith(
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
      userState: userState == freezed
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as UserState,
      publishState: publishState == freezed
          ? _value.publishState
          : publishState // ignore: cast_nullable_to_non_nullable
              as PublishState,
      videosUsers: videosUsers == freezed
          ? _value.videosUsers
          : videosUsers // ignore: cast_nullable_to_non_nullable
              as BuiltList<VideoDto>,
      videoExamples: videoExamples == freezed
          ? _value.videoExamples
          : videoExamples // ignore: cast_nullable_to_non_nullable
              as BuiltList<VideoDto>,
    ));
  }

  @override
  $AuthStateCopyWith<$Res> get authState {
    return $AuthStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
  }

  @override
  $UserStateCopyWith<$Res> get userState {
    return $UserStateCopyWith<$Res>(_value.userState, (value) {
      return _then(_value.copyWith(userState: value));
    });
  }

  @override
  $PublishStateCopyWith<$Res> get publishState {
    return $PublishStateCopyWith<$Res>(_value.publishState, (value) {
      return _then(_value.copyWith(publishState: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthState authState,
      UserState userState,
      PublishState publishState,
      BuiltList<VideoDto> videosUsers,
      BuiltList<VideoDto> videoExamples});

  @override
  $AuthStateCopyWith<$Res> get authState;
  @override
  $UserStateCopyWith<$Res> get userState;
  @override
  $PublishStateCopyWith<$Res> get publishState;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? authState = freezed,
    Object? userState = freezed,
    Object? publishState = freezed,
    Object? videosUsers = freezed,
    Object? videoExamples = freezed,
  }) {
    return _then(_AppState(
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
      userState: userState == freezed
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as UserState,
      publishState: publishState == freezed
          ? _value.publishState
          : publishState // ignore: cast_nullable_to_non_nullable
              as PublishState,
      videosUsers: videosUsers == freezed
          ? _value.videosUsers
          : videosUsers // ignore: cast_nullable_to_non_nullable
              as BuiltList<VideoDto>,
      videoExamples: videoExamples == freezed
          ? _value.videoExamples
          : videoExamples // ignore: cast_nullable_to_non_nullable
              as BuiltList<VideoDto>,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  _$_AppState(
      {required this.authState,
      required this.userState,
      required this.publishState,
      required this.videosUsers,
      required this.videoExamples});

  @override
  final AuthState authState;
  @override
  final UserState userState;
  @override
  final PublishState publishState;
  @override
  final BuiltList<VideoDto> videosUsers;
  @override
  final BuiltList<VideoDto> videoExamples;

  @override
  String toString() {
    return 'AppState(authState: $authState, userState: $userState, publishState: $publishState, videosUsers: $videosUsers, videoExamples: $videoExamples)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.authState, authState) ||
                const DeepCollectionEquality()
                    .equals(other.authState, authState)) &&
            (identical(other.userState, userState) ||
                const DeepCollectionEquality()
                    .equals(other.userState, userState)) &&
            (identical(other.publishState, publishState) ||
                const DeepCollectionEquality()
                    .equals(other.publishState, publishState)) &&
            (identical(other.videosUsers, videosUsers) ||
                const DeepCollectionEquality()
                    .equals(other.videosUsers, videosUsers)) &&
            (identical(other.videoExamples, videoExamples) ||
                const DeepCollectionEquality()
                    .equals(other.videoExamples, videoExamples)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authState) ^
      const DeepCollectionEquality().hash(userState) ^
      const DeepCollectionEquality().hash(publishState) ^
      const DeepCollectionEquality().hash(videosUsers) ^
      const DeepCollectionEquality().hash(videoExamples);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  factory _AppState(
      {required AuthState authState,
      required UserState userState,
      required PublishState publishState,
      required BuiltList<VideoDto> videosUsers,
      required BuiltList<VideoDto> videoExamples}) = _$_AppState;

  @override
  AuthState get authState => throw _privateConstructorUsedError;
  @override
  UserState get userState => throw _privateConstructorUsedError;
  @override
  PublishState get publishState => throw _privateConstructorUsedError;
  @override
  BuiltList<VideoDto> get videosUsers => throw _privateConstructorUsedError;
  @override
  BuiltList<VideoDto> get videoExamples => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
