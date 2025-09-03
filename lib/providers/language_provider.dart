import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class LanguageProvider with ChangeNotifier {
  Locale _locale = const Locale('es', 'ES');

  Locale get locale => _locale;

  void setLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }

  void toggleLanguage() {
    _locale = _locale.languageCode == 'es'
        ? const Locale('en', 'US')
        : const Locale('es', 'ES');
    notifyListeners();
  }
}
