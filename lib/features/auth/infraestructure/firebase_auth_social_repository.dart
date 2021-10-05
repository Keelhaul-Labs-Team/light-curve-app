import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:light_curve_app/features/auth/domain/auth_failure.dart';
import 'package:light_curve_app/features/auth/domain/i_auth_repository.dart';
import 'package:light_curve_app/features/auth/domain/user_dto/user_dto.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

class FirebaseAuthSocialRepository with ErrorCode implements IAuthSocialRepository {
  final FirebaseAuth _firebaseAuth;

  final GoogleSignIn _googleSignIn;

  const FirebaseAuthSocialRepository(
    this._firebaseAuth,
    this._googleSignIn,
    /* this._servicesOfToken */
  );

  @override
  Future<Either<AuthFailure, UserState>> signInWithGoogle() async {
    //  if (kIsWeb) return left(const AuthFailure.notAvailable());

    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) return left(const AuthFailure.cancelledByUser());

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);

      return right(getUserState());
    } on FirebaseAuthException catch (e) {
      return left(getAuthFailure(e));
    } catch (e) {
      if (e is SocketException) return const Left(AuthFailure.internalError());
      return left(AuthFailure.serverError(e));
    }
  }

  @override
  Future<void> signOut() async {
    await Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
  }

  @override
  UserState getUserState() {
    try {
      final currentUser = _firebaseAuth.currentUser;

      if (currentUser == null) return const UserState.notLogged();

      return UserState.data(UserDto(
          email: currentUser.email!,
          uid: currentUser.uid,
          name: currentUser.displayName,
          photoUrl: currentUser.photoURL));
    } catch (e) {
      return UserState.error(e);
    }
  }
}
