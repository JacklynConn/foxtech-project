import 'package:flutter/cupertino.dart';
import 'package:foxtech_project/screens/auth/more_screen.dart';
import '/screens/friends_screen.dart';
import '/screens/call_screen.dart';
import '/screens/chat_screen.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  int currentIndex = 0;

  final List<Widget> lstScreens = [
    const FriendScreen(),
    const ChatScreen(),
    const CallScreen(),
    const MoreScreen(),
  ];

  void bottomNavigationTap(int index) {
    currentIndex = index;
    update();
  }
}
