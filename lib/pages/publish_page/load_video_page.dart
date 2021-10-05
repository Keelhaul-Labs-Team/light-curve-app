import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/pages/publish_page/widgets/load_indicator.dart';
import 'package:light_curve_app/redux/actions/publish_action.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

import 'widgets/buttons.dart';

class LoadVideoPage extends StatelessWidget {
  final bool isSubmitting;
  const LoadVideoPage({Key? key, required this.isSubmitting}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (isSubmitting) const LoadIndicator() else Image.asset(AssetsFile.videoPicture),
        PrimaryButton(
          isSubmitting: isSubmitting,
          onPress: () => StoreProvider.of<AppState>(context).dispatch(const LoadVideoAction()),
          maintext: isSubmitting ? 'Cargando...' : 'Cargar Video',
        )
      ],
    );
  }

  Image imageFromBase64String(String base64String) {
    return Image.memory(base64Decode(base64String));
  }
}
