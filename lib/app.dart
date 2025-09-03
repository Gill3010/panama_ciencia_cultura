import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:panama_ciencia_cultura/providers/language_provider.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/destinations_screen.dart';
import 'screens/experiences_screen.dart';
import 'screens/about_screen.dart';
import 'screens/blog_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/contact_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        return MaterialApp(
          title: 'Panamá Ciencia y Cultura',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          locale: languageProvider.currentLocale,
          supportedLocales: const [
            Locale('es', 'ES'), // Español
            Locale('en', 'US'), // Inglés
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: const HomeScreen(),
          routes: {
            '/home': (context) => const HomeScreen(),
            '/destinations': (context) => const DestinationsScreen(),
            '/experiences': (context) => const ExperiencesScreen(),
            '/about': (context) => const AboutScreen(),
            '/blog': (context) => const BlogScreen(),
            '/cart': (context) => const CartScreen(),
            '/contact': (context) => const ContactScreen(),
          },
        );
      },
    );
  }
}