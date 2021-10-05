import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/redux/actions/publish_action.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

import 'widgets/buttons.dart';

class PublishPage extends StatelessWidget {
  final bool isSubmitting;
  final Uint8List? chart1;
  const PublishPage({Key? key, required this.isSubmitting, required this.chart1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Text('Resultado', style: TextStyle(fontSize: 18)),
        Container(
          color: Colors.grey[300],
          height: 250,
          width: double.infinity,
          margin: const EdgeInsets.all(16.0),
          child: Image.memory(chart1!),
        ),
        const Spacer(flex: 2),
        PrimaryButton(
          isSubmitting: isSubmitting,
          onPress: () => StoreProvider.of<AppState>(context).dispatch(const PublicateVideoAction()),
          maintext: 'Publicar Video',
        ),
        const Spacer(),
        SecundaryButton(
          onPress: () => StoreProvider.of<AppState>(context).dispatch(const BackToInitAction()),
          maintext: 'Volver al inicio',
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}
