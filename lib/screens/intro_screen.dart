import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/custom_page_view.dart';
import 'package:islami/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = "Intro_Screen";
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      body: IntroductionScreen(
        scrollPhysics: NeverScrollableScrollPhysics(),
        pages: pageViewModelList,
        onSkip: () {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
        onDone: () {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
        showBackButton: true,
        back: const Text(
          "Back",
          style: TextStyle(color: AppColors.primaryColor),
        ),
        next: const Text(
          "Next",
          style: TextStyle(color: AppColors.primaryColor),
        ),
        done: const Text(
          "Finish",
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
          color: AppColors.gray,
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
  CustomPageView(
    title: "Reading the Quran",
    body: "Read, and your Lord is the Most Generous",
    image: "assets/Intro_3.png",
  ),
  CustomPageView(
    title: "Bearish",
    body: "Praise the name of your Lord, the Most High",
    image: "assets/Intro_4.png",
  ),
  CustomPageView(
    title: "Holy Quran Radio",
    body:
        "You can listen to the Holy Quran Radio through the application for free and easily",
    image: "assets/Intro_5.png",
  ),
];
