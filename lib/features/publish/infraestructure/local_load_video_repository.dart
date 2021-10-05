import 'dart:io';

import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:light_curve_app/config.dart';

import 'package:light_curve_app/features/publish/domain/i_publish_repository.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';

import 'package:path/path.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class LocalVideoRepository implements ILoadVideoFileRepository {
  const LocalVideoRepository();
  @override
  Future<Uint8List?> generateThumbnail(String videoPath) async {
    try {
      return VideoThumbnail.thumbnailData(
        video: videoPath,
        imageFormat: ImageFormat.WEBP,
        maxHeight: 800,
        quality: 60,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Either<PublishFailure, String>> loadVideo() async {
    try {
      final picked = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: const ['mov', 'mp4'],
      );
      if (picked == null) return const Left(PublishFailure.cancelledByUser());

      final file = File(picked.files.first.path!);

      final videoPath = join(applicationDocumentsDirectory, ' video_to_publish${extension(file.path)}');

      await file.copy(videoPath);

      file.delete();

      return right(videoPath);
    } catch (e) {
      return const Left(PublishFailure.internalError());
    }
  }
}
