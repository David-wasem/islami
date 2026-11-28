import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/tabs/hadeth_screen.dart';
import 'package:islami/tabs/quran_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home_Screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/Background.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold (
          backgroundColor: Colors.transparent,
          body: pages[index],
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.primaryColor,
            selectedItemColor: AppColors.primaryWhite,
            unselectedItemColor: AppColors.primaryBlack,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (value) {
              setState(() {
                print("value: $value");
                index = value;
              });
            },
            currentIndex: index,
          ),
        ),
      ],
    );
  }
}

List<BottomNavigationBarItem> bottomNavItems = [
  buildBottomNavItem("assets/quran_icon.png", "Quran"),
  buildBottomNavItem("assets/hadeth_icon.png", "Hadith"),
  buildBottomNavItem("assets/sebha_icon.png", "Sebha"),
  buildBottomNavItem("assets/radio_icon.png", "Radio"),
  buildBottomNavItem("assets/time_icon.png", "Time"),
];

BottomNavigationBarItem buildBottomNavItem(
  String icon,
  String label,
) {
  return BottomNavigationBarItem(
    icon: ImageIcon(AssetImage(icon), size: 22.0),
    activeIcon: Container(
      width: 60.0,
      height: 35.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(172, 32, 32, 32),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ImageIcon(AssetImage(icon), size: 22.0),
    ),
    label: label,
  );
}

List<Widget> pages = [
  const QuranScreen(),
  const HadethScreen(),
  const QuranScreen(),
  const QuranScreen(),
  const QuranScreen(),
];
