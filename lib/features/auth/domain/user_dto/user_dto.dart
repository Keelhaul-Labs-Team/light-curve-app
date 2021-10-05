import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto({
    String? name,
    String? photoUrl,
    required String uid,
    required String email,
  }) = _UserDto;
}
