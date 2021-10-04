import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/pages/auth/container/container_auth_page.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:light_curve_app/redux/state/user_state/user_state.dart';

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
                init: () => const PublishPage(),
                loaded: () => const PublishPage(),
                calculated: () => const PublishPage(),
              );
      },
    );
  }
}
