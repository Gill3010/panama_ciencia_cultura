import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../models/language.dart';

class LanguageProvider with ChangeNotifier {
  Locale _currentLocale = const Locale('es', 'ES');

  Locale get currentLocale => _currentLocale;

  void toggleLanguage() {
    _currentLocale = _currentLocale.languageCode == 'es'
        ? const Locale('en', 'US')
        : const Locale('es', 'ES');
    notifyListeners();
  }

  // Para futuras expansiones: método para cambiar a un idioma específico
  void changeLanguage(Language language) {
    _currentLocale = Locale(language.code, language.countryCode);
    notifyListeners();
  }
}
