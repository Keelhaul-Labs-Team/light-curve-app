import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/pages/auth/container/container_avatar.dart';

class VideoChart extends StatelessWidget {
  final VideoDto video;
  const VideoChart({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
        actions: const [AvatarUser()],
        //   backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(video.title),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CachedNetworkImage(
                imageUrl: video.chart1,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            CachedNetworkImage(
              imageUrl: video.chart2,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
