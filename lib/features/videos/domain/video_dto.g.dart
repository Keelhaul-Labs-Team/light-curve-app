// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoDto _$_$_VideoDtoFromJson(Map<String, dynamic> json) {
  return _$_VideoDto(
    id: json['id'] as String?,
    thumbnail: json['thumbnail'] as String,
    title: json['title'] as String,
    uidUser: json['uidUser'] as String,
    timestamp: json['timestamp'] as int,
    size: json['size'] as int,
    linkUrl: json['linkUrl'] as String,
    description: json['description'] as String?,
    pathDonwload: json['pathDonwload'] as String,
    photoUrlUser: json['photoUrlUser'] as String,
    chart1: json['chart1'] as String,
    chart2: json['chart2'] as String,
  );
}

Map<String, dynamic> _$_$_VideoDtoToJson(_$_VideoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'uidUser': instance.uidUser,
      'timestamp': instance.timestamp,
      'size': instance.size,
      'linkUrl': instance.linkUrl,
      'description': instance.description,
      'pathDonwload': instance.pathDonwload,
      'photoUrlUser': instance.photoUrlUser,
      'chart1': instance.chart1,
      'chart2': instance.chart2,
    };
