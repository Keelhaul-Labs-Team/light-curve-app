import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/auth/domain/user_dto/user_dto.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';

abstract class ILoadVideoFileRepository {
  Future<Either<PublishFailure, String>> loadVideo();

  Future<Uint8List?> generateThumbnail(String videoPath);
}

abstract class ICalculateLuminosityRepository {
  Future<Either<PublishFailure, Uint8List>> getCharts(String pathVideo);
}

abstract class IpublishVideo {
  Future<Either<PublishFailure, PublishSucces>> publishVideo({
    required String path,
    required Uint8List? chart1,
    required Uint8List? thumbnail,
    required UserDto user,
  });
}
