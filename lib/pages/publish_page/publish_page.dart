import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/redux/actions/publish_action.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

import 'widgets/buttons.dart';

class PublishPage extends StatelessWidget {
  const PublishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(AssetsFile.videoPicture),
        PrimaryButton(
          onPress: () => StoreProvider.of<AppState>(context).dispatch(const LoadVideoAction()),
          maintext: 'Cargar Video',
        )
      ],
    );
  }
}
