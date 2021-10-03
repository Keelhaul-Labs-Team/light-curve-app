import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/pages/auth/container/container_auth_page.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:light_curve_app/redux/state/publish_state/publish_state.dart';

import '../publish_page.dart';

class ContainerPublishPage extends StatelessWidget {
  const ContainerPublishPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PublishState>(
      distinct: true,
      converter: (store) => store.state.publishState,
      builder: (context, publishState) {
        return publishState.when(
          () => const PublishPage(),
          notLogged: () => const ContainerAuthPage(),
        );
      },
    );
  }
}
