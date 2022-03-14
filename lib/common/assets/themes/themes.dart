import 'package:flutter/material.dart';

class Themes {
  Themes._();

  static get bgColor => const Color(0xFFFFFFFF);
  static get bg2Color => const Color(0xFFF8F9FD);
  static get iconsColor => const Color(0xFFC4C5C6);
  static get textColor => const Color(0xFF000000);
  static get primaryColor => const Color(0xFFFDCB58);

  static ThemeData get light => ThemeData(
        scaffoldBackgroundColor: bgColor,
        primaryColor: primaryColor,
        backgroundColor: bg2Color,
        iconTheme: IconThemeData(
          color: iconsColor,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
          bodyText2: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
          headline1: TextStyle(
            color: textColor,
            fontSize: 48,
          ),
          headline2: TextStyle(
            color: textColor,
            fontSize: 24,
          ),
          headline3: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
          headline4: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
          headline5: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
          headline6: TextStyle(
            color: textColor,
            fontSize: 14,
          ),
        ),
      );
}
