import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/intro_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        IntroScreen.routeName: (context) => const IntroScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: IntroScreen.routeName,
    );
  }
}
