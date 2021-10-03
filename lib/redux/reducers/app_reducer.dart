import 'package:built_collection/built_collection.dart';
import 'package:light_curve_app/redux/reducers/publish_reducer.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

import 'auth_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    userState: userReducer(state.userState, action),
    authState: authReducer(state.authState, action),
    publishState: publishReducer(state.publishState, action),
  );
}
