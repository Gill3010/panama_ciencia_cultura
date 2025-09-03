import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/language_provider.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider =
        Provider.of<LanguageProvider>(context, listen: false);

    return IconButton(
      icon: const Icon(Icons.language),
      onPressed: () {
        languageProvider.toggleLanguage();
      },
      tooltip: 'Cambiar idioma',
    );
  }
}
