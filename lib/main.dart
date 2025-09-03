import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'providers/language_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: const MyApp(),
    ),
  );
}