import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:light_curve_app/features/videos/domain/i_videos_repository.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';

class FirebaseVideosRepository implements IVideosRepository {
  final FirebaseFirestore _firestore;
  const FirebaseVideosRepository(this._firestore);
  @override
  Stream<List<VideoDto>> $videosLocal() {
    return _firestore
        .collection('video_gallery')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((docs) => docs.docs)
        .map((data) => data.map((doc) => VideoDto.fromJson(doc.data()).copyWith(id: doc.id)).toList());
  }

  @override
  Stream<List<VideoDto>> $videosNetwork() {
    return _firestore
        .collection('videos_home')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((docs) => docs.docs)
        .map((data) => data.map((doc) => VideoDto.fromJson(doc.data()).copyWith(id: doc.id)).toList());
  }
}
