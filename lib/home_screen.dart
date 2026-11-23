import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home_Screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: const Center(
        child: Text("Welcome to Home Screen"),
      )
    );
  }
}