import 'package:flutter/rendering.dart';

class Constants {
  Constants._();

  static const double smallPadding = 10;
  static const double mediumPadding = 16;
  static const double bigPadding = 48;

  static const shadow = BoxShadow(
    blurRadius: 4,
    spreadRadius: 0,
    offset: Offset(0, 0),
    color: Color.fromARGB(60, 0, 0, 0),
  );

  static const aniamionDuration = Duration(milliseconds: 300);
}
