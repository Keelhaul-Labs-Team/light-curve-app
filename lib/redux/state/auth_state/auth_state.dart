import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_curve_app/features/auth/domain/auth_failure.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );

  factory AuthState.submitting() => AuthState(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

  factory AuthState.finishLogin(Either<AuthFailure, Unit> result) => AuthState(
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(result),
      );
}
