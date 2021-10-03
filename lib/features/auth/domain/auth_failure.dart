import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError(Object err) = ServerError;
  const factory AuthFailure.internalError() = InternalError;
  const factory AuthFailure.accountDisabled() = AccountDisabled;
}
//flutter pub run build_runner watch --delete-conflicting-outputs
