import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_tz/generated/l10n.dart';
import 'package:github_tz/presentation/home_page/home_page.dart';
import 'package:github_tz/presentation/themes/kLightTheme.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightTheme,
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'GitHub_tz',
        theme: light,
        darkTheme: dark,
        home: HomePage(),
      ),
    );
  }
}
