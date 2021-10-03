import 'package:light_curve_app/redux/actions/auth_actions.dart';
import 'package:light_curve_app/redux/state/auth_state/auth_state.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';
import 'package:redux/redux.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, UpdateAuthStateAction>(_updateAuthStateReducers),
  TypedReducer<AuthState, SignOutAction>(_initAuthStateReducers),
]);
AuthState _updateAuthStateReducers(AuthState state, UpdateAuthStateAction action) {
  return action.authState;
}

AuthState _initAuthStateReducers(AuthState state, SignOutAction action) {
  return AuthState.initial();
}

final userReducer = combineReducers<UserState>([
  TypedReducer<UserState, UpdateUserStateAction>(_updateUserStateReducers),
  TypedReducer<UserState, SignOutAction>(_initUserStateReducers),
]);
UserState _updateUserStateReducers(UserState state, UpdateUserStateAction action) {
  return action.userState;
}

UserState _initUserStateReducers(UserState state, SignOutAction action) {
  return const UserState.notLogged();
}
