import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'application.dart';

class Translations {
  Translations(Locale locale) {
    this.locale = locale;
    _localizedValues = null;
  }

  Locale locale;
  static Map<dynamic, dynamic> _localizedValues;
  static Translations translations;

  static Translations of(BuildContext context) {
    return Localizations.of(context, Translations);
  }

  static Future<Translations> load(Locale locale) async {
    if(_localizedValues==null) {

      translations = new Translations(locale);
      String jsonContent =
      await rootBundle.loadString(
          "assets/locale/language_${locale.languageCode}.json");
      _localizedValues = json.decode(jsonContent);

    }
    return translations;
  }

  String text(String key) {
    try{

      return (_localizedValues == null || _localizedValues[key] == null) ? '$key' : _localizedValues[key];
    }catch(handleError){
      load(locale);
      return "";
//      return _localizedValues[key] ?? '** $key not found';
    }
  }

  get currentLanguage => locale.languageCode;
}

class TranslationsDelegate extends LocalizationsDelegate<Translations> {
  const TranslationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      applic.supportedLanguages.contains(locale.languageCode);

  @override
  Future<Translations> load(Locale locale) => Translations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<Translations> old) => false;
}

class SpecificLocalizationDelegate extends LocalizationsDelegate<Translations> {
  final Locale overriddenLocale;

  const SpecificLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;

  @override
  Future<Translations> load(Locale locale) =>
      Translations.load(overriddenLocale);

  @override
  bool shouldReload(LocalizationsDelegate<Translations> old) => true;
}
