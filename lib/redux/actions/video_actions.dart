import 'package:light_curve_app/features/videos/domain/video_dto.dart';

class InitVideosStreamAction {
  const InitVideosStreamAction();
}

class CloseVideosStreamAction {
  const CloseVideosStreamAction();
}

class SetVideosUsersStateAction {
  final List<VideoDto> videos;

  SetVideosUsersStateAction(this.videos);
}

class SetVideosExampleStateAction {
  final List<VideoDto> videos;

  SetVideosExampleStateAction(this.videos);
}
