import 'package:light_curve_app/features/auth/domain/i_auth_repository.dart';

class SignOut {
  final IAuthSocialRepository _authRepository;

  const SignOut(this._authRepository);

  Future<void> call() => _authRepository.signOut();
}
