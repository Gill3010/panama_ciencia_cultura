class Language {
  final String name;
  final String code;
  final String countryCode;

  const Language(this.name, this.code, this.countryCode);
  
  // Lista de idiomas soportados
  static const List<Language> supportedLanguages = [
    Language('Español', 'es', 'ES'),
    Language('English', 'en', 'US'),
  ];
}