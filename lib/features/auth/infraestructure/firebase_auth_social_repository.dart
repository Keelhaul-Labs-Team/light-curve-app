/* import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/auth/domain/auth_failure.dart';
import 'package:light_curve_app/features/auth/domain/i_auth_repository.dart';

class FirebaseAuthSocialRepository with ErrorCode implements IAuthSocialRepository {
  final FirebaseAuth _firebaseAuth;

  final GoogleSignIn _googleSignIn;

  const FirebaseAuthSocialRepository(
    this._firebaseAuth,
    this._googleSignIn,
    /* this._servicesOfToken */
  );

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    //  if (kIsWeb) return left(const AuthFailure.notAvailable());

    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) return left(const AuthFailure.cancelledByUser());

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      final userCredential = await _firebaseAuth.signInWithCredential(authCredential);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      return getAuthFailure(e);
    } catch (e) {
      if (e is SocketException) return const Left(AuthFailure.internalError());
      return left(AuthFailure.serverError(e));
    }
  }

  @override
  Future<void> signOut() async {
    await Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
  }
}
 */