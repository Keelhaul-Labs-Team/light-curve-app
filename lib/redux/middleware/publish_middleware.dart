import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/redux/state/publish_state/publish_state.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:file_picker/file_picker.dart';
import 'package:light_curve_app/features/publish/domain/auth_failure.dart';
import 'package:light_curve_app/main.dart';
import 'package:light_curve_app/redux/actions/auth_actions.dart';
import 'package:light_curve_app/redux/actions/publish_action.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:path/path.dart';

import 'package:redux/redux.dart';

List<Middleware<AppState>> createPublishMiddlewares(FirebaseFirestore firestore) {
  return [
    TypedMiddleware<AppState, LoadVideoAction>(getLoadVideoMiddleware()),
    TypedMiddleware<AppState, CalculatedVideoAction>(getCalculatedMiddleware()),
    TypedMiddleware<AppState, PublicateVideoAction>(getPublicatedMiddleware(firestore)),
  ];
}

MiddlewareAct<AppState, LoadVideoAction> getLoadVideoMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.publishState.isSubmitting) return;

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: true,
      publishFailureOrSuccessOption: none(),
    )));

    final result = await loadVideo();

    result.forEach((videoDetail) => next(UpdatePublishStateAction(store.state.publishState.copyWith(
          pathVideo: videoDetail.path,
          pathThumbnail: videoDetail.thumbnail,
        ))));

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: false,
      publishStep: result.isRight() ? const PublishStep.loaded() : const PublishStep.init(),
      publishFailureOrSuccessOption: optionOf(result.map((r) => 'Se cargó el video')),
    )));
  };
}

MiddlewareAct<AppState, CalculatedVideoAction> getCalculatedMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.publishState.isSubmitting) return;

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: true,
      publishFailureOrSuccessOption: none(),
    )));

    final result = await getCharts();

    result.forEach((charts) => next(UpdatePublishStateAction(store.state.publishState.copyWith(
          chart1: charts.chart1,
          chart2: charts.chart2,
        ))));

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: false,
      publishStep: result.isRight() ? const PublishStep.calculated() : const PublishStep.loaded(),
      publishFailureOrSuccessOption: optionOf(result.map((r) => 'Se calculó con éxito')),
    )));
  };
}

MiddlewareAct<AppState, PublicateVideoAction> getPublicatedMiddleware(FirebaseFirestore firestore) {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.publishState.isSubmitting) return;

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: true,
      publishFailureOrSuccessOption: none(),
    )));

    store.state.userState.map((userState) async {
      final result = await publicateVideo(
          firestore: firestore,
          storage: _storage,
          chart1: store.state.publishState.chart1!,
          path: store.state.publishState.pathVideo!,
          thumbnail: store.state.publishState.pathThumbnail!,
          chart2: store.state.publishState.chart2!,
          title: userState.name!,
          uidUser: userState.uid,
          photoUrlUser: userState.photoUrl!);

      next(UpdatePublishStateAction(store.state.publishState.copyWith(
        isSubmitting: false,
        publishStep: result.isRight() ? const PublishStep.init() : const PublishStep.calculated(),
        publishFailureOrSuccessOption: optionOf(result.map((r) => 'Se publicó el video')),
      )));
    }, notLogged: (_) {}, error: (_) {});
  };
}

Future<Either<PublishFailure, Unit>> publicateVideo({
  required FirebaseFirestore firestore,
  required FirebaseStorage storage,
  required String chart1,
  required String path,
  required String thumbnail,
  required String chart2,
  required String title,
  required String photoUrlUser,
  required String uidUser,
}) async {
  try {
    final current = DateTime.now().millisecondsSinceEpoch;
    final pathDonwload = join('videos_home', uidUser, '$current${extension(path)}');

    final res1 = await storage.ref(pathDonwload).putFile(File(path));

    final res2 = await storage
        .ref(join('videos_home', uidUser, 'thumbnail_$current${extension(thumbnail)}'))
        .putFile(File(thumbnail));

    firestore.collection('videos_home').add(VideoDto(
            chart1: chart1,
            chart2: chart2,
            linkUrl: await res1.ref.getDownloadURL(),
            thumbnail: await res2.ref.getDownloadURL(),
            photoUrlUser: photoUrlUser,
            size: File(path).lengthSync(),
            timestamp: current,
            title: title,
            uidUser: uidUser,
            pathDonwload: pathDonwload)
        .toJson());
    return right(unit);
  } catch (e) {
    return const Left(PublishFailure.notPublished());
  }
}

Future<Either<PublishFailure, Charts>> getCharts() async {
  await Future.delayed(const Duration(seconds: 2));
  return right(Charts(
      'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_chart_1.jpg?alt=media&token=94e314d9-5506-4956-94cb-6d108eacb967',
      'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_chart_2.png?alt=media&token=0f50a0c8-a6f6-436a-b2f9-57aae68d1708'));
}

Future<Either<PublishFailure, VideoDetail>> loadVideo() async {
  final picked = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: const ['mov', 'mp4'],
  );
  if (picked == null) return const Left(PublishFailure.cancelledByUser());

  final file = File(picked.files.first.path!);

  final videoPath = join(applicationDocumentsDirectory, ' video_to_publish${extension(file.path)}');

  await file.copy(videoPath);

  file.delete();
  final imgBytes = await VideoThumbnail.thumbnailData(
    video: videoPath,
    imageFormat: ImageFormat.WEBP,
    maxHeight: 800,
    quality: 60,
  );

  final thumbnailPath = join(applicationDocumentsDirectory, ' thumbnail.webp');

  File(thumbnailPath).writeAsBytesSync(imgBytes!);

  return right(VideoDetail(videoPath, thumbnailPath));
}

class VideoDetail {
  final String path;
  final String thumbnail;

  VideoDetail(this.path, this.thumbnail);
}

class Charts {
  final String chart1;
  final String chart2;

  Charts(this.chart1, this.chart2);
}
