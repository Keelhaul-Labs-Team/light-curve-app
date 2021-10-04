import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_curve_app/features/publish/domain/auth_failure.dart';

part 'publish_state.freezed.dart';

@freezed
class PublishState with _$PublishState {
  factory PublishState({
    String? pathVideo,
    String? pathThumbnail,
    String? chart1,
    String? chart2,
    required bool isSubmitting,
    required PublishStep publishStep,
    required Option<Either<PublishFailure, String>> publishFailureOrSuccessOption,
  }) = _PublishState;

  factory PublishState.initial() => PublishState(
        isSubmitting: false,
        publishStep: const PublishStep.init(),
        publishFailureOrSuccessOption: none(),
      );
}

@freezed
abstract class PublishStep with _$PublishStep {
  const factory PublishStep.init() = InitStep;
  const factory PublishStep.loaded() = LoadedStep;
  const factory PublishStep.calculated() = CalculateStep;
}
