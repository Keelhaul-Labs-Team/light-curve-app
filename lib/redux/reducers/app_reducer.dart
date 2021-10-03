import 'package:built_collection/built_collection.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

import 'package:redux/redux.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    userState: state.userState,
    authState: state.authState,
    publishState: state.publishState,
  );
}
