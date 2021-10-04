import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/pages/gallery/widgets/play_video.dart';
import 'package:light_curve_app/pages/video_charts/video_chart_page.dart';
import 'package:light_curve_app/pages/widgets/avatar_cache_image.dart';

class CardVideoHome extends StatelessWidget {
  final VideoDto video;
  const CardVideoHome({Key? key, required this.video}) : super(key: key);

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
                  color: Colors.grey[300],
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
          leading: AvatarCacheImage(
            radius: 25,
            urlPath: video.photoUrlUser,
          ),
          title: Text(video.title),
          subtitle: Text(_date),
        )
      ],
    );
  }

  String get _date => formatDate(
      DateTime.fromMillisecondsSinceEpoch(video.timestamp), [dd, ' de ', MM, ' a las ', hh, ':', nn, ' ', am],
      locale: const SpanishDateLocale());
}
