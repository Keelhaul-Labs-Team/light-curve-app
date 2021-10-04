import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

import '../gallery_page.dart';

class ContainerGalleryPage extends StatelessWidget {
  const ContainerGalleryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BuiltList<VideoDto>>(
      distinct: true,
      converter: (store) => store.state.videoExamples,
      builder: (context, videoExamples) {
        return GalleryPage(
          videos: videoExamples.asList(),
        );
      },
    );
  }
}
