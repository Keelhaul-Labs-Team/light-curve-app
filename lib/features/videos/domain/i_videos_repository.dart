import 'package:light_curve_app/features/videos/domain/video_dto.dart';

abstract class IVideosRepository {
  Stream<List<VideoDto>> $videosNetwork();
  Stream<List<VideoDto>> $videosLocal();
}
