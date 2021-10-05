import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';

import 'package:light_curve_app/pages/auth/container/container_avatar.dart';

import 'package:light_curve_app/pages/auth/widget/show_snackbar.dart';
import 'package:path/path.dart' as path;
import 'package:share_plus/share_plus.dart';

class VideoChart extends StatelessWidget {
  final VideoDto video;
  const VideoChart({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
        actions: [
          IconButton(
              onPressed: () async {
                try {
                  final request = await HttpClient().getUrl(Uri.parse(video.chart1));

                  final response = await request.close();

                  final bytes = await consolidateHttpClientResponseBytes(response);
                  final temporaryPath = applicationDocumentsDirectory;
                  final fileName =
                      path.join(temporaryPath, 'Ligth_curve_${DateTime.now().millisecondsSinceEpoch}.jpg');
                  File(fileName).writeAsBytesSync(bytes);

                  await Share.shareFiles([fileName],
                      mimeTypes: ['image/jpg'], text: 'From Light Curve', subject: path.basename(fileName));
                } catch (_) {
                  showSnackBar('Revise su conexión', context, icon: Icons.wifi);
                }
              },
              icon: const Icon(Icons.share)),
          const AvatarUser()
        ],
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
                placeholder: (context, url) => SizedBox(
                  height: 75,
                  width: 75,
                  child: CircularProgressIndicator(
                    strokeWidth: 6,
                    backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),

            /*   Padding(
              padding: const EdgeInsets.all(16.0),
            CachedNetworkImage(
              imageUrl: video.chart2,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),), */
          ],
        ),
      ),
    );
  }
}
