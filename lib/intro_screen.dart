import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/custom_page_view.dart';
import 'package:islami/home_screen.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = "Intro_Screen";
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      body: IntroductionScreen(
        pages: pageViewModelList,
        onSkip: () {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
        onDone: () {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(color: AppColors.primaryColor),
        ),
        back: const Icon(Icons.arrow_back, color: AppColors.primaryColor),
        next: const Icon(Icons.arrow_forward, color: AppColors.primaryColor),
        done: const Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
        dotsContainerDecorator: BoxDecoration(color: AppColors.primaryBlack),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: AppColors.primaryColor,
          color: Color(0xff707070),
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}

List<PageViewModel> pageViewModelList = [
  CustomPageView(title: "Welcome to Islami App", image: "assets/Intro_1.png"),
  CustomPageView(
    title: "Welcome to Islami",
    body: "We Are Very Excited To Have You In Our Community",
    image: "assets/Intro_2.png",
  ),
];
