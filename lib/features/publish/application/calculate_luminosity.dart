import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/publish/domain/i_publish_repository.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';

class CalculateLuminosity {
  final ICalculateLuminosityRepository _calculateRepository;

  const CalculateLuminosity(this._calculateRepository);
  Future<Either<PublishFailure, Uint8List>> call(String pathVideo) =>
      _calculateRepository.getCharts(pathVideo);
}
