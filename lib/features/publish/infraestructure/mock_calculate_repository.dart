import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/features/publish/domain/i_publish_repository.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';

class MockCalculateRepository implements ICalculateLuminosityRepository {
  const MockCalculateRepository();

  @override
  Future<Either<PublishFailure, Uint8List>> getCharts(String pathVideo) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      final byteData = await rootBundle.load(AssetsFile.chartExample);

      return right(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    } catch (e) {
      return const Left(PublishFailure.notCalculated());
    }
  }
}
