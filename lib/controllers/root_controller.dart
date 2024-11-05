import 'package:flutter/cupertino.dart';
import '../screens/more_screen.dart';
import '/screens/home_screen.dart';
import '/screens/profile_screen.dart';
import '/screens/chat_screen.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  int currentIndex = 0;

  final List<Widget> lstScreens = [
    const HomeScreen(),
    const ChatScreen(),
    const ProfileScreen(),
    const MoreScreen(),
  ];

  void bottomNavigationTap(int index) {
    currentIndex = index;
    update();
  }
}
