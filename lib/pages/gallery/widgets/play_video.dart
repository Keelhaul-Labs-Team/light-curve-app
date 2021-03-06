import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:light_curve_app/features/videos/domain/video_dto.dart';

import 'package:light_curve_app/pages/widgets/video_thumbnail.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as p;
import 'package:video_player/video_player.dart';

class PlayVideo extends StatefulWidget {
  final VideoDto video;
  const PlayVideo({Key? key, required this.video}) : super(key: key);

  @override
  _PlatVideoState createState() => _PlatVideoState();
}

class _PlatVideoState extends State<PlayVideo> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.video.linkUrl)
      ..initialize().then((_) {
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    /*  _pathOnApp = p.join(
      applicationDocumentsDirectory,
      widget.video.id! + p.extension(widget.video.pathDonwload),
    );
    _isFileDownloaded = File(_pathOnApp).existsSync(); */
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _isDownloading = false;
  late bool _isFileDownloaded;
  late String _pathOnApp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _controller.value.isPlaying ? _controller.pause() : _controller.play();
        });
        if (_isFileDownloaded) {}
      }, // _isFileDownloaded ? _playVideo : _downloadVideo,
      child: _controller.value.isPlaying
          ? Container(
              color: Colors.black,
              // aspectRatio: _controller.value.aspectRatio,
              child: Center(
                  child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )),
            )
          : VideoThumbnail(
              thumbnail: widget.video.thumbnail,
              isDownloaded: true,
              isDownloading: _isDownloading,
            ),
    );
  }

  Future<void> downloadVideo() async {
    setState(() => {_isDownloading = true});

    try {
      await FirebaseStorage.instance.ref(widget.video.pathDonwload).writeToFile(File(_pathOnApp));
      _isFileDownloaded = true;
      _playVideo();
    } catch (_) {}
    setState(() => {_isDownloading = false});
  }

  Future<void> _playVideo() async {
    if (p.extension(_pathOnApp) == '.mp4') OpenFile.open(_pathOnApp, type: 'video/mp4');
    if (p.extension(_pathOnApp) == '.avi') OpenFile.open(_pathOnApp, type: 'video/x-msvideo');
    if (p.extension(_pathOnApp) == '.mov') OpenFile.open(_pathOnApp, type: 'video/quicktime');
  }
}
