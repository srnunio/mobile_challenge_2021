import 'dart:convert';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class I18n {
  I18n(this._locale);

  late Locale _locale;

  static late Map<dynamic, dynamic> _localizedValues;

  static late I18n _current;

  static I18n get instance => _current;

  static String text(String key) {
    return _localizedValues[key] ?? '** $key not found';
  }

  static Future<I18n> load(Locale locale) async {
    locale = _filterLocale(locale);
    String jsonContent = await rootBundle
        .loadString("assets/locale/i18n_${locale.languageCode}.json");
    _localizedValues = json.decode(jsonContent);
    return _current = new I18n(locale);
  }

  static Locale filterLocale(Locale locale) => _filterLocale(locale);

  static Locale _filterLocale(Locale locale) {
    if (locale.languageCode.contains('pt')) {
      return Locale('pt');
    } else if (locale.languageCode.contains('en')) {
      return Locale('en');
    } else {
      return Locale('pt');
    }
  }

  bool isSupported(Locale locale) => ['en', 'pt'].contains(locale.languageCode);

  Locale get currentLanguage => _filterLocale(_locale);
}

class TranslationsDelegate extends LocalizationsDelegate<I18n> {
  const TranslationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'pt'].contains(locale.languageCode);

  @override
  Future<I18n> load(Locale locale) async {
    return I18n.load(locale);
  }

  @override
  bool shouldReload(TranslationsDelegate old) => false;
}
