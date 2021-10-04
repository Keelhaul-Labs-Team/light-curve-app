import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/redux/state/app_state.dart';

import '../home_page.dart';

class ContainerHomePage extends StatelessWidget {
  const ContainerHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BuiltList<VideoDto>>(
      distinct: true,
      converter: (store) => store.state.videosUsers,
      builder: (context, videosUsers) {
        return HomePage(
          videos: videosUsers.asList(),
        );
      },
    );
  }
}
