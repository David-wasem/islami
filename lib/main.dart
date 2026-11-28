import 'package:flutter/material.dart';
import 'package:islami/screens/home_screen.dart';
import 'package:islami/screens/intro_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        IntroScreen.routeName: (context) => IntroScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: IntroScreen.routeName,
    );
  }
}
