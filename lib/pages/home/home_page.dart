import 'package:flutter/material.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/pages/home/widget/card_video.dart';

class HomePage extends StatelessWidget {
  final List<VideoDto> videos;
  const HomePage({Key? key, required this.videos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => CardVideoHome(video: videos[index]),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: videos.length,
    );
  }
}
