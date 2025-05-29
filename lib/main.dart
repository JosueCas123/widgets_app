import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/screens/buttons/button_screen.dart';
import 'package:widgets_app/presentation/screens/cards/card_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColors: 1).gethemeData(),
      home: const  HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/settings': (context) => const ButtonScreen(),
        '/profile': (context) => const CardScreen(),
      }
    );
  }
}
