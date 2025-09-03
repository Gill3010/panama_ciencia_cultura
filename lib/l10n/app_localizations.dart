import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  Map<String, String> _localizedStrings = {};

  Future<bool> load() async {
    try {
      final String jsonString = await rootBundle
          .loadString('lib/l10n/app_${locale.languageCode}.arb');

      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      _localizedStrings = jsonMap.map((key, value) {
        if (value is String) {
          return MapEntry(key, value);
        }
        return MapEntry(key, value.toString());
      });

      return true;
    } catch (e) {
      print('Error loading localization: $e');
      return false;
    }
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['es', 'en'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
