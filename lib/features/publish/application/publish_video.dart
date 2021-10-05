import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/auth/domain/user_dto/user_dto.dart';
import 'package:light_curve_app/features/publish/domain/i_publish_repository.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';

class PublishVideo {
  final IpublishVideo _publishRepository;

  const PublishVideo(this._publishRepository);

  Future<Either<PublishFailure, PublishSucces>> call({
    required String path,
    Uint8List? chart1,
    required Uint8List? thumbnail,
    required UserDto user,
  }) =>
      _publishRepository.publishVideo(
        user: user,
        path: path,
        chart1: chart1,
        thumbnail: thumbnail,
      );
}
