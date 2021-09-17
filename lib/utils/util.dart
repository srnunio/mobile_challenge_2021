import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/I18n/l18n.dart';

class Util {
  static Future<Locale> defaultLocale() async {
    while (Platform.localeName == null) {
      await Future.delayed(const Duration(microseconds: 300), () {});
    }
    var value = Platform.localeName;
    value = (value.isEmpty) ? 'pt' : value;
    value = value.toLowerCase().contains('pt') ? 'pt' : 'en';
    return I18n.filterLocale(Locale(value));
  }
}
