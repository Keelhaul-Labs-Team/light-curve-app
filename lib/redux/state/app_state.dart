import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/redux/state/publish_state/publish_state.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';
import 'package:redux/redux.dart';

import 'auth_state/auth_state.dart';

part 'app_state.freezed.dart';

typedef MiddlewareAct<State, Action> = dynamic Function(
  Store<State> store,
  Action action,
  dynamic Function(dynamic) next,
);

@freezed
class AppState with _$AppState {
  factory AppState({
    required AuthState authState,
    required UserState userState,
    required PublishState publishState,
    required BuiltList<VideoDto> videosUsers,
    required BuiltList<VideoDto> videoExamples,
  }) = _AppState;

  factory AppState.initial({required UserState? userState}) {
    return AppState(
      authState: AuthState.initial(),
      userState: userState ?? const UserState.notLogged(),
      publishState: PublishState.initial(),
      videoExamples: <VideoDto>[].build(),
      videosUsers: <VideoDto>[].build(),
    );
  }
}
