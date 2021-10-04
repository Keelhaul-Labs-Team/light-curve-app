import 'package:light_curve_app/features/videos/domain/i_videos_repository.dart';
import 'package:light_curve_app/redux/actions/video_actions.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

Stream<dynamic> Function(Stream<dynamic>, EpicStore<AppState> store) getEpicMiddleware({
  required IVideosRepository videosUserRepository,
  required IVideosRepository videosExampleRepository,
}) {
  return combineEpics<AppState>([
    VideosUserEpic(videosUserRepository),
    VideosExampleEpic(videosExampleRepository),
  ]);
}

class VideosUserEpic implements EpicClass<AppState> {
  final IVideosRepository repository;

  const VideosUserEpic(this.repository);

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<InitVideosStreamAction>().switchMap((requestAction) {
      return repository
          .$videosNetwork()
          .map((videos) => SetVideosUsersStateAction(videos))
          .takeUntil(actions.whereType<CloseVideosStreamAction>()); // 8
    });
  }
}

class VideosExampleEpic implements EpicClass<AppState> {
  final IVideosRepository repository;

  const VideosExampleEpic(this.repository);

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<InitVideosStreamAction>().switchMap((requestAction) {
      return repository
          .$videosLocal()
          .map((videos) => SetVideosExampleStateAction(videos))
          .takeUntil(actions.whereType<CloseVideosStreamAction>()); // 8
    });
  }
}
