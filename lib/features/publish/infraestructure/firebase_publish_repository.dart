import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:light_curve_app/features/auth/domain/user_dto/user_dto.dart';

import 'package:light_curve_app/features/publish/domain/i_publish_repository.dart';
import 'package:light_curve_app/features/publish/domain/publish_succes_and_failure.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:path/path.dart';

class FirebasePublishRepository implements IpublishVideo {
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

  FirebasePublishRepository(
    this.firestore,
    this.storage,
  );

  @override
  Future<Either<PublishFailure, PublishSucces>> publishVideo({
    required String path,
    required Uint8List? chart1,
    required Uint8List? thumbnail,
    required UserDto user,
  }) async {
    try {
      final current = DateTime.now().millisecondsSinceEpoch;
      final pathDonwload = join('videos_home', user.uid, '$current${extension(path)}');
      final paththumbnail = join('videos_home', user.uid, 'thumbnail_$current.webp');

      final resServer = await Future.wait([
        storage.ref(pathDonwload).putFile(File(path)),
        storage.ref(paththumbnail).putData(thumbnail!),
      ]);
      final linksServer = await Future.wait([
        resServer[0].ref.getDownloadURL(),
        resServer[1].ref.getDownloadURL(),
      ]);

      firestore.collection('videos_home').add(VideoDto(
              chart1:
                  'https://firebasestorage.googleapis.com/v0/b/proyect-1-271bc.appspot.com/o/Mock%2Fmock_chart_2.jpg?alt=media&token=a0a82eea-3d00-4c89-aa16-88c968d03d69',
              linkUrl: linksServer.first,
              thumbnail: linksServer.last,
              photoUrlUser: user.photoUrl,
              size: File(path).lengthSync(),
              timestamp: current,
              title: user.name ?? 'Usuario desconocido',
              uidUser: user.uid,
              pathDonwload: pathDonwload)
          .toJson());
      return const Right(PublishSucces.uploadSucces());
    } catch (e) {
      return const Left(PublishFailure.notPublished());
    }
  }
}
