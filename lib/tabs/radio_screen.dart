import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.0),
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/Islami_img.png", height: 170.0),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              "Radio",
              style: TextStyle(color: AppColors.primaryWhite, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
