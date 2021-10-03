import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/auth/application/login_google.dart';
import 'package:light_curve_app/features/auth/application/sign_out.dart';
import 'package:light_curve_app/redux/actions/auth_actions.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:light_curve_app/redux/state/auth_state/auth_state.dart';

import 'package:redux/redux.dart';

List<Middleware<AppState>> createAuthMiddlewares({
  required SignOut signOutApp,
  required LoginWithGoogle loginWithGoogle,
}) {
  return [
    TypedMiddleware<AppState, LoginWithGoogleAction>(getLoginWithGoogleMiddleware(loginWithGoogle)),
    TypedMiddleware<AppState, SignOutAction>(getSignOutMiddleware(signOutApp)),
  ];
}

MiddlewareAct<AppState, LoginWithGoogleAction> getLoginWithGoogleMiddleware(LoginWithGoogle loginWithGoogle) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.authState.isSubmitting) return;

    next(UpdateAuthStateAction(AuthState.submitting()));

    final result = await loginWithGoogle();

    result.forEach((userState) => next(UpdateUserStateAction(userState)));

    next(UpdateAuthStateAction(AuthState.finishLogin(result.map((r) => unit))));
  };
}

MiddlewareAct<AppState, SignOutAction> getSignOutMiddleware(SignOut signOutApp) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    await signOutApp();
    next(action);
  };
}
