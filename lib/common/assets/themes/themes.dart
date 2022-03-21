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
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: primaryColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              primaryColor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            shadowColor: MaterialStateProperty.all(
              const Color.fromARGB(60, 0, 0, 0),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.only(
            left: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
        ),
      );
}
