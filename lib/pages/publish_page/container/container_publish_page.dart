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
    return StoreConnector<AppState, UserState>(
      distinct: true,
      converter: (store) => store.state.userState,
      builder: (context, userState) {
        return userState is NotLogged ? const ContainerAuthPage() : const PublishPage();
      },
    );
  }
}
