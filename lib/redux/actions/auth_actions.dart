import 'package:light_curve_app/redux/state/auth_state/auth_state.dart';
import 'package:light_curve_app/redux/state/publish_state/publish_state.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

class LoginWithGoogleAction {
  const LoginWithGoogleAction();
}

class SignOutAction {
  const SignOutAction();
}

class UpdateAuthStateAction {
  final AuthState authState;

  const UpdateAuthStateAction(this.authState);
}

class UpdateUserStateAction {
  final UserState userState;

  const UpdateUserStateAction(this.userState);
}

class UpdatePublishStateAction {
  final PublishState publishState;

  const UpdatePublishStateAction(this.publishState);
}
