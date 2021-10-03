import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    String? name,
    String? photoUrl,
    required String uid,
    required String email,
  }) = _UserState;
  const factory UserState.notLogged() = NotLogged;
  const factory UserState.error(Object err) = UserError;
}
