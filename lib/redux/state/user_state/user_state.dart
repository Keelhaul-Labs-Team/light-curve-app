import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_curve_app/features/auth/domain/user_dto/user_dto.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState.data(UserDto user) = UserData;
  const factory UserState.notLogged() = UserNotLogged;
  const factory UserState.error(Object err) = UserError;
}
