import 'package:flutter/material.dart';

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}

final baseColor = const Color(0xffE3F2FD).mix(const Color(0xffFAFAFA), .4).mix(const Color(0xffE9EBEE), .2);

class AssetsFile {
  static const logo = 'assets/logo.png';
  static const chart = 'assets/grafico-de-lineas.png';
  static const astronomo = 'assets/astronomo.png';
  static const google = 'assets/google-icon.svg';
  static const videoPicture = 'assets/video_picture.png';
}
