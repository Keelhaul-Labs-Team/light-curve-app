import 'package:light_curve_app/features/videos/domain/i_videos_repository.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';

class MockVideosRepository implements IVideosRepository {
  const MockVideosRepository();
  @override
  Stream<List<VideoDto>> $videosLocal() {
    final current = DateTime.now().millisecondsSinceEpoch;
    return Stream.value(List.generate(
        3,
        (index) => VideoDto(
              thumbnail:
                  'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_thumbnail.png?alt=media&token=23666473-fd97-4ac9-8a07-5a6f5aea2c27',
              title: 'Example calculate $index',
              description: 'Realizado el 3 de Octubre.',
              uidUser: 'index',
              timestamp: current + index,
              size: 1000 + index,
              linkUrl:
                  'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_thumbnail.png?alt=media&token=23666473-fd97-4ac9-8a07-5a6f5aea2c27',
              pathDonwload: 'Mock/mock_example.avi',
              photoUrlUser: 'assets/logo.png',
              chart1:
                  'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_chart_2.jpg?alt=media&token=a0a82eea-3d00-4c89-aa16-88c968d03d69',
            )));
  }

  @override
  Stream<List<VideoDto>> $videosNetwork() {
    final current = DateTime.now().millisecondsSinceEpoch;
    return Stream.value(List.generate(
        5,
        (index) => VideoDto(
              id: index.toString(),
              thumbnail:
                  'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_thumbnail.png?alt=media&token=23666473-fd97-4ac9-8a07-5a6f5aea2c27',
              title: 'Fulano de las Casas $index',
              uidUser: 'index',
              timestamp: current + index,
              size: 1000 + index,
              linkUrl:
                  'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_example.mp4?alt=media&token=32e94c9e-f54c-4219-9fc8-c1feddf345be',
              pathDonwload: 'assets/mock_example.avi',
              photoUrlUser:
                  'https://lh3.googleusercontent.com/ogw/ADea4I68NwILuAllik9zw9abCfm6n6TaFgWYwjlPbXap=s32-c-mo',
              chart1:
                  'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_chart_2.jpg?alt=media&token=a0a82eea-3d00-4c89-aa16-88c968d03d69',
            )));
  }
}
