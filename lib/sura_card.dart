import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';

class SuraCard extends StatelessWidget {
  final String suraNameAr;
  final String suraNameEn;
  final int ayaNumber;
  final String imageAsset;
  const SuraCard({
    super.key,
    required this.suraNameAr,
    required this.suraNameEn,
    required this.ayaNumber,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      width: 280.0,
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColors.primaryColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  suraNameEn,
                  style: TextStyle(
                    color: AppColors.primaryBlack,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  suraNameAr,
                  style: TextStyle(
                    color: AppColors.primaryBlack,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  "$ayaNumber Verses",
                  style: TextStyle(
                    color: AppColors.primaryBlack,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              color: AppColors.primaryBlack,
              imageAsset,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
