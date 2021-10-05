import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/auth/domain/auth_failure.dart';
import 'package:light_curve_app/features/auth/domain/i_auth_repository.dart';
import 'package:light_curve_app/features/auth/domain/user_dto/user_dto.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

class FakeSocialRepository implements IAuthSocialRepository {
  const FakeSocialRepository();
  @override
  Future<Either<AuthFailure, UserState>> signInWithGoogle() async {
    await Future.delayed(const Duration(seconds: 2));

    final res = <Either<AuthFailure, UserState>>[
      const Left(AuthFailure.accountDisabled()),
      const Left(AuthFailure.serverError(0)),
      const Left(AuthFailure.internalError()),
      Right(UserState.data(UserDto(
          email: 'pepito@gmail.com',
          name: 'Pepito',
          uid: '599sadasdsad',
          photoUrl:
              'https://cdn.icon-icons.com/icons2/2859/PNG/512/avatar_face_man_boy_profile_smiley_happy_people_icon_181659.png')))
    ]..shuffle();

    return res.first;
  }

  @override
  Future<void> signOut() async {}

  @override
  UserState getUserState() {
    return const UserState.notLogged();
  }
}
