import 'package:flutter/material.dart';

class Themes {
  Themes._();

  static get bgColor => const Color(0xFFFFFFFF);

  static ThemeData get light => ThemeData(
        scaffoldBackgroundColor: bgColor,
      );
}
