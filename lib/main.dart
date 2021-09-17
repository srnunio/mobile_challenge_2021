import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mobile_challenge_2021/router.dart';
import 'package:mobile_challenge_2021/utils/theme.dart';
import 'package:mobile_challenge_2021/utils/util.dart';

import 'I18n/l18n.dart';
import 'domain/core/i_navigation_service.dart';
import 'injection/injection.dart';
import 'injection/injection_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await I18n.load(await Util.defaultLocale());
  InjectorConfig.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    INavigationService _navigation = inject<INavigationService>();
    return MaterialApp(
      title: 'Pharma Inc',
      navigatorKey: _navigation.navigator,
      supportedLocales: [
        const Locale('pt', 'PT'),
        const Locale('en', 'EN'),
        I18n.instance.currentLanguage
      ],
      localizationsDelegates: [
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (locale, Iterable<Locale> supportedLocales) {
        for (Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode ||
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      onGenerateRoute: CustomRouter.route,
      theme: CustomTheme.themeLight(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
