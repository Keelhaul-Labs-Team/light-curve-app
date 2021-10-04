import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/pages/auth/container/container_auth_page.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

import '../calculate_video_page.dart';
import '../load_video_page.dart';
import '../publish_page.dart';

class ContainerPublishPage extends StatelessWidget {
  const ContainerPublishPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      distinct: true,
      converter: (store) => store.state,
      builder: (context, state) {
        return state.userState is NotLogged
            ? const ContainerAuthPage()
            : state.publishState.publishStep.when(
                init: () => LoadVideoPage(isSubmitting: state.publishState.isSubmitting),
                loaded: () => CalculateVideoPage(
                  isSubmitting: state.publishState.isSubmitting,
                  thumbnail: state.publishState.pathThumbnail!,
                  pathVideo: state.publishState.pathVideo!,
                ),
                calculated: () => PublishPage(
                  chart1: state.publishState.chart1!,
                  isSubmitting: state.publishState.isSubmitting,
                ),
              );
      },
    );
  }
}
