import 'package:flutter/cupertino.dart';
import 'package:foxtech_project/screens/home_screen.dart';
import 'package:foxtech_project/screens/profile_screen.dart';
import 'package:foxtech_project/screens/search_screen.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  int currentIndex = 0;

  final List<Widget> lstScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  void bottomNavigationTap(int index) {
    currentIndex = index;
    update();
  }
}
