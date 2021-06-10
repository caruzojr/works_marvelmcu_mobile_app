import 'package:flutter/material.dart';
import 'package:marvel_mcu_app/src/shared/data/constants/all.const.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: zPrimaryColor,
    accentColor: zAccentColor,
    fontFamily: zBasicFont,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: zTextColorDefault,
        fontSize: zFontSizeXXXL,
        fontWeight: FontWeight.w900,
        letterSpacing: zLetterSpacingTitle,
        height: zLineSpacingTitle,
      ),
      headline2: TextStyle(
        color: zTextColorDefault,
        fontSize: zFontSizeXXL,
        fontWeight: FontWeight.w900,
        letterSpacing: zLetterSpacingTitle,
      ),
      headline3: TextStyle(
        color: zTextColorDefault,
        fontSize: zFontSizeXL,
        fontWeight: FontWeight.w700,
        letterSpacing: zLetterSpacingTitle,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        height: 1.3,
      ),
    ),
  );
}
