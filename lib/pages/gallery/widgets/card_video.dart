import 'package:flutter/material.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/pages/gallery/widgets/play_video.dart';
import 'package:light_curve_app/pages/video_charts/video_chart_page.dart';

class CardVideoGallery extends StatelessWidget {
  final VideoDto video;
  const CardVideoGallery({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 20,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  height: 150,
                  color: Colors.grey[200],
                  child: PlayVideo(video: video),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFFc7d4f9))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => VideoChart(video: video)));
                  },
                  child: Text('Ver más', style: TextStyle(color: Theme.of(context).primaryColor))),
              const Spacer(),
            ],
          ),
        ),
        ListTile(
          leading: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[350]),
              width: 50,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset(AssetsFile.logo),
              )),
          title: Text(video.title),
          subtitle: Text(video.description ?? 'Realizado por Light Curve'),
        )
      ],
    );
  }
}
