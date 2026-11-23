import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/app_colors.dart';

class CustomPageView extends PageViewModel {
  CustomPageView({required String title, String? body, required String image})
    : super(
        title: title,
        body: body ?? "",
        image: FittedBox(
          fit: BoxFit.contain,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/Islami_img.png", height: 170.0),
              Image.asset(image, height: 415.0),
            ],
          ),
        ),
        decoration: const PageDecoration(
          pageColor: AppColors.primaryBlack,
          titleTextStyle: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
          bodyTextStyle: TextStyle(
            fontSize: 20.0,
            color: AppColors.primaryColor,
          ),
          imageFlex: 7,
          bodyFlex: 2,
          footerFlex: 1,
          imagePadding: EdgeInsets.symmetric(horizontal: 16.0),
          titlePadding: EdgeInsets.only(top: 8.0, bottom: 15.0),
          imageAlignment: Alignment.center,
          bodyAlignment: Alignment.topCenter,
        ),
      );
}
