import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/presentation/core/styles.dart';
import 'colors.dart';

class CustomTheme {
  static const Color Transparent = Color(0xa1e0e0e0);

  static late ThemeData _themeData;

  static Brightness get brightness => _themeData.brightness;

  static ThemeData themeLight() {
    _themeData = ThemeData(
      brightness: Brightness.light,
      primaryColor: kPrimaryColor,
      textTheme: TextTheme(
        headline1: styleText(),
        headline2: styleText(),
        headline3: styleText(),
        headline4: styleText(),
        headline5: styleText(),
        headline6: styleText(),
        bodyText1: styleText(),
        bodyText2: styleText(),
        subtitle1: styleText(),
        subtitle2: styleText(),
        caption: styleText(),
      ).apply(bodyColor: kPrimaryColor, displayColor: kPrimaryColor),
      appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: kBackgroundColor,
          iconTheme: IconThemeData(color: kIconColor)),
      iconTheme: IconThemeData(color: kIconColor),
      accentColor: kPrimaryColor,
      backgroundColor: kPlaceholderColor,
      scaffoldBackgroundColor: kPlaceholderColor,
      dialogBackgroundColor: kPlaceholderColor,
      fontFamily: fontName,
      cardColor: kBackgroundColor, 
    );
    return _themeData;
  }
}
