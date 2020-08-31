import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  static const int counterStartingNumber = 10;
}

class ColorConstants {
  static const Color color1 = Color.fromRGBO(0x00, 0xAE, 0xF5, 1.0);
  static const Color color2 = Color.fromRGBO(0x7A, 0xDA, 0xFF, 1.0);
  static const Color color3 = Color.fromRGBO(0xFF, 0x59, 0x67, 1.0);
  static const Color color4 = Color.fromRGBO(0xFF, 0xEB, 0x96, 1.0);
  static const Color color5 = Color.fromRGBO(0xFF, 0xD8, 0x3C, 1.0);
  static const Color lightBackground = Color.fromRGBO(0xF9, 0xF8, 0xFB, 1.0);
  static const Color lightBackgroundPathColor = Color(0xFFE6F8FF);
  static Color darkBackground = Colors.black;
  static const Color lightBackgroundContrast = Color.fromRGBO(0xf2, 0xf0, 0xf6, 1.0);
  static const Color badgeBackground = color3;
  static const Color badgeForeground = Colors.white;
}

class ThemeConstants {
  static const double appBarElevation = 0.0;

  static const double pagePadding = 16.0;

  static const double cardBorderRadius = 12.0;
  static const double cardMarginHorizontal = 0.0;
  static const double cardElevation = 1.0;
  static const double cardBlurRadius = 10.0;
  static const double cardSpaceBetween = 16.0;
  static const double cardSpaceAfterLast = 120.0;

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: ColorConstants.lightBackground,
      elevation: appBarElevation,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: ColorConstants.lightBackground,
      elevation: appBarElevation,
    ),
    backgroundColor: ColorConstants.lightBackground,
    scaffoldBackgroundColor: ColorConstants.lightBackgroundContrast,
    primaryColor: ColorConstants.color1,
    canvasColor: ColorConstants.color1,
    accentColor: ColorConstants.color2,
    cursorColor: ColorConstants.color2,
    buttonColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.white,
      textTheme: ButtonTextTheme.primary,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
        side: const BorderSide(
          color: ColorConstants.color1,
          width: 2.0,
        ),
      ),
    ),
    cardTheme: CardTheme(
      color: ColorConstants.lightBackground,
      elevation: cardElevation,
      margin: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 16.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardBorderRadius),
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.grey.shade800),
      bodyText2: TextStyle(color: Colors.grey.shade800),
      subtitle1: TextStyle(
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: TextStyle(color: Colors.grey.shade800),
      headline5: TextStyle(
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      ),
      headline6: TextStyle(
        color: Colors.grey.shade800,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      ),
    ),
    primaryTextTheme: TextTheme(
      bodyText1: const TextStyle(color: ColorConstants.color1),
      bodyText2: TextStyle(color: Colors.grey.shade800),
      subtitle1: const TextStyle(
        color: ColorConstants.color1,
        fontWeight: FontWeight.w500,
      ),
      headline1: const TextStyle(color: ColorConstants.color1),
      headline2: const TextStyle(color: ColorConstants.color1),
      headline3: const TextStyle(color: ColorConstants.color1),
      headline4: const TextStyle(color: ColorConstants.color1),
      headline5: const TextStyle(
        color: ColorConstants.color1,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      ),
      headline6: const TextStyle(
        color: ColorConstants.color1,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      ),
    ),
    accentTextTheme: TextTheme(
      bodyText1: const TextStyle(color: ColorConstants.color2),
      bodyText2: TextStyle(color: Colors.grey.shade800),
      subtitle1: const TextStyle(
        color: ColorConstants.color2,
        fontWeight: FontWeight.w500,
      ),
      headline1: const TextStyle(color: ColorConstants.color2),
      headline2: const TextStyle(color: ColorConstants.color2),
      headline3: const TextStyle(color: ColorConstants.color2),
      headline4: const TextStyle(color: ColorConstants.color2),
      headline5: const TextStyle(
        color: ColorConstants.color2,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      ),
      headline6: const TextStyle(
        color: ColorConstants.color2,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
      ),
    ),
  );
}
