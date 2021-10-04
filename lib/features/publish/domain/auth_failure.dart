import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class PublishFailure with _$PublishFailure {
  const factory PublishFailure.cancelledByUser() = CancelledByUser;
  const factory PublishFailure.serverError(Object err) = ServerError;
  const factory PublishFailure.internalError() = InternalError;
  const factory PublishFailure.notCalculated() = NotCalculated;
  const factory PublishFailure.notPublished() = NotPublished;
}
//flutter pub run build_runner watch --delete-conflicting-outputs
