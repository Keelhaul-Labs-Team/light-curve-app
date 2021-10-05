import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/publish/domain/i_publish_repository.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';

class LoadVideoFile {
  final ILoadVideoFileRepository _loadRepository;
  final ILoadVideoFileRepository _generateRepository;

  const LoadVideoFile(this._loadRepository, {ILoadVideoFileRepository? generateRepository})
      : _generateRepository = generateRepository ?? _loadRepository;

  Future<Either<PublishFailure, _VideoDetail>> call() async {
    final picked = await _loadRepository.loadVideo();

    return picked.fold(
      (l) => left(l),
      (videoPath) async {
        final thumbnailBytes = await _generateRepository.generateThumbnail(videoPath);

        if (thumbnailBytes == null) return const Left(PublishFailure.internalError());

        return right(_VideoDetail(videoPath, thumbnailBytes));
      },
    );
  }
}

class _VideoDetail {
  final String path;
  final Uint8List? thumbnail;

  _VideoDetail(this.path, this.thumbnail);
}
