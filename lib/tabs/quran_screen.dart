import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/sura_card.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.0),
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/Islami_img.png", height: 170.0),
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                style: TextStyle(color: AppColors.primaryWhite),
                cursorColor: AppColors.primaryColor,
                onTapUpOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: TextStyle(color: AppColors.primaryWhite),
                  filled: true,
                  fillColor: const Color(0xB3202020),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.0,
                    ),
                  ),
                  prefixIcon: Image.asset(
                    "assets/quran_icon_search.png",
                    height: 15.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Most Recently",
                style: TextStyle(color: AppColors.primaryWhite, fontSize: 20.0),
              ),
            ),
            SizedBox(height: 20.0),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: suraCards.length,
              itemBuilder: (context, index) {
                return suraCards[index];
              },
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Suras List",
                style: TextStyle(color: AppColors.primaryWhite, fontSize: 20.0),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

List<SuraCard> suraCards = [
  SuraCard(
    suraNameAr: "الانبياء",
    suraNameEn: "Al-Anbiya",
    ayaNumber: 112,
    imageAsset: "assets/Intro_2.png",
  ),
  SuraCard(
    suraNameAr: "الانبياء",
    suraNameEn: "Al-Anbiya",
    ayaNumber: 112,
    imageAsset: "assets/Intro_2.png",
  ),
  SuraCard(
    suraNameAr: "الانبياء",
    suraNameEn: "Al-Anbiya",
    ayaNumber: 112,
    imageAsset: "assets/Intro_2.png",
  ),
  SuraCard(
    suraNameAr: "الانبياء",
    suraNameEn: "Al-Anbiya",
    ayaNumber: 112,
    imageAsset: "assets/Intro_2.png",
  ),
];
