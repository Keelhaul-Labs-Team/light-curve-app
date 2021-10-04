import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_dto.freezed.dart';
part 'video_dto.g.dart';

@freezed
class VideoDto with _$VideoDto {
  factory VideoDto({
    String? id,
    required String thumbnail,
    required String title,
    required String uidUser,
    required int timestamp,
    required int size,
    required String linkUrl,
    String? description,
    required String pathDonwload,
    required String photoUrlUser,
    //
    required String chart1,
    required String chart2,
  }) = _VideoDto;

  factory VideoDto.fromJson(Map<String, dynamic> json) => _$VideoDtoFromJson(json);
}
