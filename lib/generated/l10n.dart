// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ПОИСК`
  String get search_P_app_bar {
    return Intl.message(
      'ПОИСК',
      name: 'search_P_app_bar',
      desc: '',
      args: [],
    );
  }

  /// `ПОИСК`
  String get search_P_btn {
    return Intl.message(
      'ПОИСК',
      name: 'search_P_btn',
      desc: '',
      args: [],
    );
  }

  /// `РЕЗУЛЬТАТ ПОИСКА`
  String get result_P_app {
    return Intl.message(
      'РЕЗУЛЬТАТ ПОИСКА',
      name: 'result_P_app',
      desc: '',
      args: [],
    );
  }

  /// `ПО ЗАПРОСУ: `
  String get result_P_title {
    return Intl.message(
      'ПО ЗАПРОСУ: ',
      name: 'result_P_title',
      desc: '',
      args: [],
    );
  }

  /// `НАЙДЕНО: `
  String get result_P_subtitle {
    return Intl.message(
      'НАЙДЕНО: ',
      name: 'result_P_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Обновлено: `
  String get result_card_info {
    return Intl.message(
      'Обновлено: ',
      name: 'result_card_info',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}