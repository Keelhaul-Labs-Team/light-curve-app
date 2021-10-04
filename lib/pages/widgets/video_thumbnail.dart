import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class VideoThumbnail extends StatelessWidget {
  final String thumbnail;
  final bool isDownloaded;
  final bool isDownloading;
  final Function()? onError;
  const VideoThumbnail(
      {Key? key,
      required this.thumbnail,
      this.onError,
      this.isDownloading = false,
      this.isDownloaded = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: thumbnail,
      imageBuilder: (context, imageProvider) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: Colors.black,
              image: DecorationImage(
                image: imageProvider, // FileImage(File(thumbnail ?? '')),
                onError: (exception, stackTrace) => onError?.call(),
                fit: BoxFit.contain,
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
                    child: isDownloading
                        ? const CircularProgressIndicator()
                        : Icon(
                            isDownloaded ? Icons.play_arrow : Icons.download,
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
    );
  }
}
