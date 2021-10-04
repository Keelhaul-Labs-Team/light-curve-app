import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/pages/widgets/video_thumbnail.dart';
import 'package:light_curve_app/redux/actions/publish_action.dart';
import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:open_file/open_file.dart';

import 'package:path/path.dart' as p;
import 'widgets/buttons.dart';

class CalculateVideoPage extends StatelessWidget {
  final bool isSubmitting;
  final String thumbnail;
  final String pathVideo;
  const CalculateVideoPage(
      {Key? key, required this.isSubmitting, required this.thumbnail, required this.pathVideo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            if (p.extension(pathVideo) == '.mp4') OpenFile.open(pathVideo, type: 'video/mp4');
            if (p.extension(pathVideo) == '.avi') OpenFile.open(pathVideo, type: 'video/x-msvideo');
            if (p.extension(pathVideo) == '.mov') OpenFile.open(pathVideo, type: 'video/quicktime');
          },
          child: Container(
            margin: const EdgeInsets.all(16),
            height: 0200,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                color: Colors.blueGrey,
                image: DecorationImage(
                  image: FileImage(File(thumbnail)),
                  onError: (exception, stackTrace) => {},
                  fit: BoxFit.cover,
                )),
            child: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: (constraints.maxHeight * 0.5).clamp(0, constraints.maxWidth * 0.8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: (constraints.maxHeight * 0.35).clamp(0, constraints.maxWidth * 0.8),
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
        ),
        PrimaryButton(
          isSubmitting: isSubmitting,
          onPress: () => StoreProvider.of<AppState>(context).dispatch(const CalculatedVideoAction()),
          maintext: isSubmitting ? 'Calculando...' : 'Calcular',
        ),
        SecundaryButton(
          onPress: () => StoreProvider.of<AppState>(context).dispatch(const BackToInitAction()),
          maintext: 'Volver',
        )
      ],
    );
  }
}
