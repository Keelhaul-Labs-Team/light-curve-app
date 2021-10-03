import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_curve_app/redux/state/publish_state/publish_state.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

import 'auth_state/auth_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    required AuthState authState,
    required UserState userState,
    required PublishState publishState,
  }) = _AppState;

  factory AppState.initial({bool isLogged = false}) {
    return AppState(
      authState: AuthState.initial(),
      userState: const UserState.loading(),
      publishState: isLogged ? PublishState() : const PublishState.notLogged(),
    );
  }
}
