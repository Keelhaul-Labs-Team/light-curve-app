import 'package:dartz/dartz.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

import 'auth_failure.dart';

abstract class IAuthSocialRepository {
  Future<Either<AuthFailure, UserState>> signInWithGoogle();
  Future<void> signOut();

  UserState? getUserState();
}

mixin ErrorCode {
  Either<AuthFailure, Unit> getAuthFailure(dynamic e) {
    if (e.code == 'user-disabled') return left(const AuthFailure.accountDisabled());

    return left(AuthFailure.serverError(e as Object));
  }
}
