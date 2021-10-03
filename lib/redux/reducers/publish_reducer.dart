import 'package:light_curve_app/redux/actions/auth_actions.dart';
import 'package:light_curve_app/redux/state/publish_state/publish_state.dart';
import 'package:redux/redux.dart';

final publishReducer = combineReducers<PublishState>([
  TypedReducer<PublishState, UpdatePublishStateAction>(_updatePublishStateReducers),
]);
PublishState _updatePublishStateReducers(PublishState state, UpdatePublishStateAction action) {
  return action.publishState;
}
