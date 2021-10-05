import 'package:freezed_annotation/freezed_annotation.dart';
part 'publish_succes_and_failure.freezed.dart';

@freezed
class PublishFailure with _$PublishFailure {
  const factory PublishFailure.cancelledByUser() = CancelledByUser;
  const factory PublishFailure.serverError(Object err) = ServerError;
  const factory PublishFailure.internalError() = InternalError;
  const factory PublishFailure.notCalculated() = NotCalculated;
  const factory PublishFailure.notPublished() = NotPublished;
}

//flutter pub run build_runner watch --delete-conflicting-outputs
@freezed
abstract class PublishSucces with _$PublishSucces {
  const factory PublishSucces.loadSucces() = LoadSucces;
  const factory PublishSucces.calculatedSucces() = CalculatedSucces;
  const factory PublishSucces.uploadSucces() = UploadhSucces;
}
