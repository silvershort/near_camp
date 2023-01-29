import 'package:flutter/material.dart';

class AppConst {
  static const appFont = 'NanumSquareNeo';
  static const appTextTheme = TextTheme(
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
