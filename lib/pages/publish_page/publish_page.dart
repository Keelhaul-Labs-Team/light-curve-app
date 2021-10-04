import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/redux/actions/publish_action.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

import 'widgets/buttons.dart';

class PublishPage extends StatelessWidget {
  final bool isSubmitting;
  final String chart1;
  const PublishPage({Key? key, required this.isSubmitting, required this.chart1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.grey[300],
          height: 250,
          width: double.infinity,
          margin: const EdgeInsets.all(16.0),
          child: CachedNetworkImage(
            imageUrl: chart1,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        PrimaryButton(
          isSubmitting: isSubmitting,
          onPress: () => StoreProvider.of<AppState>(context).dispatch(const PublicateVideoAction()),
          maintext: 'Publicar Video',
        ),
        SecundaryButton(
          onPress: () => StoreProvider.of<AppState>(context).dispatch(const BackToInitAction()),
          maintext: 'Subir otro video',
        )
      ],
    );
  }
}
