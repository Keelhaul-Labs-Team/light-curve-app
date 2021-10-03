import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError(Object err) = ServerError;
  const factory AuthFailure.internalError() = InternalError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.emailNotExist() = EmailNotExist;
  const factory AuthFailure.accountDisabled() = AccountDisabled;
  const factory AuthFailure.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination;
}
//flutter pub run build_runner watch --delete-conflicting-outputs
