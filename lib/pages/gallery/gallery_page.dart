import 'package:flutter/material.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';

import 'widgets/card_video.dart';

class GalleryPage extends StatelessWidget {
  final List<VideoDto> videos;
  const GalleryPage({Key? key, required this.videos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => CardVideoGallery(video: videos[index]),
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Divider(color: Colors.grey[600]),
      ),
      itemCount: videos.length,
    );
  }
}
