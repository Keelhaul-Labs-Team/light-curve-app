import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/auth/domain/user_dto/user_dto.dart';

import 'package:light_curve_app/features/publish/domain/i_publish_repository.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';

class MockPublishRepository implements IpublishVideo {
  const MockPublishRepository();
  @override
  Future<Either<PublishFailure, PublishSucces>> publishVideo(
      {required String path,
      required Uint8List? chart1,
      required Uint8List? thumbnail,
      required UserDto user}) async {
    await Future.delayed(const Duration(seconds: 2));

    return DateTime.now().millisecondsSinceEpoch.isOdd
        ? const Left(PublishFailure.notPublished())
        : const Right(PublishSucces.uploadSucces());
  }
}
