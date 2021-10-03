import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/auth/domain/auth_failure.dart';
import 'package:light_curve_app/features/auth/domain/i_auth_repository.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

class LoginWithGoogle {
  final IAuthSocialRepository _authRepository;

  LoginWithGoogle(this._authRepository);

  Future<Either<AuthFailure, UserState>> call() {
    return _authRepository.signInWithGoogle();
  }
}
