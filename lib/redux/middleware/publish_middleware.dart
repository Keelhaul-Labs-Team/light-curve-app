import 'package:dartz/dartz.dart';
import 'package:light_curve_app/features/publish/application/calculate_luminosity.dart';
import 'package:light_curve_app/features/publish/application/load_video.dart';
import 'package:light_curve_app/features/publish/application/publish_video.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';

import 'package:light_curve_app/redux/actions/auth_actions.dart';
import 'package:light_curve_app/redux/actions/publish_action.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:light_curve_app/redux/state/publish_state/publish_state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createPublishMiddlewares(
  PublishVideo publishVideo,
  LoadVideoFile loadVideoFile,
  CalculateLuminosity calculateLuminosity,
) {
  return [
    TypedMiddleware<AppState, LoadVideoAction>(getLoadVideoMiddleware(loadVideoFile)),
    TypedMiddleware<AppState, CalculatedVideoAction>(getCalculatedMiddleware(calculateLuminosity)),
    TypedMiddleware<AppState, PublicateVideoAction>(getPublicatedMiddleware(publishVideo)),
  ];
}

MiddlewareAct<AppState, LoadVideoAction> getLoadVideoMiddleware(
  LoadVideoFile loadVideoFile,
) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.publishState.isSubmitting) return;

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: true,
      publishFailureOrSuccessOption: none(),
    )));

    final result = await loadVideoFile();

    result.forEach((videoDetail) => next(UpdatePublishStateAction(store.state.publishState.copyWith(
          pathVideo: videoDetail.path,
          thumbnail: videoDetail.thumbnail,
        ))));

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: false,
      publishStep: result.isRight() ? const PublishStep.loaded() : const PublishStep.init(),
      publishFailureOrSuccessOption: optionOf(result.map((r) => const PublishSucces.loadSucces())),
    )));
  };
}

MiddlewareAct<AppState, CalculatedVideoAction> getCalculatedMiddleware(
  CalculateLuminosity calculateLuminosity,
) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.publishState.isSubmitting) return;

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: true,
      publishFailureOrSuccessOption: none(),
    )));

    final result = await calculateLuminosity(store.state.publishState.pathVideo!);

    result.forEach((chart) => next(UpdatePublishStateAction(store.state.publishState.copyWith(
          chart1: chart,
        ))));

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: false,
      publishStep: result.isRight() ? const PublishStep.calculated() : const PublishStep.loaded(),
      publishFailureOrSuccessOption: optionOf(result.map((r) => const PublishSucces.calculatedSucces())),
    )));
  };
}

MiddlewareAct<AppState, PublicateVideoAction> getPublicatedMiddleware(PublishVideo publishVideo) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.publishState.isSubmitting) return;

    next(UpdatePublishStateAction(store.state.publishState.copyWith(
      isSubmitting: true,
      publishFailureOrSuccessOption: none(),
    )));

    store.state.userState.when(
        data: (userData) async {
          final result = await publishVideo(
            user: userData,
            path: store.state.publishState.pathVideo!,
            thumbnail: store.state.publishState.thumbnail,
          );

          next(UpdatePublishStateAction(store.state.publishState.copyWith(
            isSubmitting: false,
            publishStep: result.isRight() ? const PublishStep.init() : const PublishStep.calculated(),
            publishFailureOrSuccessOption: optionOf(result),
          )));
        },
        notLogged: () {},
        error: (_) {});
  };
}
