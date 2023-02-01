import 'package:flutter/material.dart';

class AppConst {
  static const String appFont = 'NanumSquareNeo';
  static const String shareUrl = 'https://nearcamp.page.link';
  static const String packageName = 'com.silvershort.near_camp';
  static const String bundleId = 'com.silvershort.nearCamp';
  static const TextTheme appTextTheme = TextTheme(
    titleLarge: TextStyle(
      fontSize: 21,
      fontFamily: AppConst.appFont,
      fontWeight: FontWeight.w800,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontFamily: AppConst.appFont,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      fontSize: 15,
      fontFamily: AppConst.appFont,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontFamily: AppConst.appFont,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontFamily: AppConst.appFont,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 13,
      fontFamily: AppConst.appFont,
      fontWeight: FontWeight.w400,
    ),
  );
}
