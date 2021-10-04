import 'dart:io';
import 'dart:convert';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime_type/mime_type.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

Future<String> uploadImagen2(File video, String uidUser) async {
  final url = Uri.parse('http://159.89.149.24:5051/upload_s3');
  final mimeType = mime(video.path)!.split('/');
  final imagenUploadRequest = http.MultipartRequest('POST', url);
  final file = await http.MultipartFile.fromPath('myFile', video.path,
      contentType: MediaType(mimeType[0], mimeType[1]));
  //String newName = '${file.filename.split('.')[0]}.png';

  imagenUploadRequest.files.add(file);
  try {
    final srtreamResponse = await imagenUploadRequest.send();

    final response = await http.Response.fromStream(srtreamResponse);
    final respuestaDecodificada = json.decode(response.body)['image'];
    final data = base64Decode(respuestaDecodificada as String);

    final current = DateTime.now().millisecondsSinceEpoch;
    final pathDonwload = join('videos_home', uidUser, 'chart', '$current.jpg');
    final storage = FirebaseStorage.instance;
    final res1 = await storage.ref(pathDonwload).putData(data);
    return res1.ref.getDownloadURL();
  } catch (_) {}
  return '';
}

String encode(String pathVideo) {
  return base64Encode(File(pathVideo).readAsBytesSync());
}
