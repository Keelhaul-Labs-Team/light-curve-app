import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    required String? name,
    required String? photoUrl,
    required String uid,
    required String email,
  }) = UserData;
  const factory UserState.loading() = UserLoading;
  const factory UserState.error(Object err) = UserError;
}
