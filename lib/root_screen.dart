import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common/styles/app_strings.dart';
import '/controllers/root_controller.dart';
import 'package:get/get.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final RootController _rootController = Get.put(RootController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: _rootController.currentIndex,
            children: _rootController.lstScreens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _rootController.currentIndex,
            onTap: _rootController.bottomNavigationTap,
            selectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_fill),
                label: AppStrings.friend,
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    Icon(CupertinoIcons.chat_bubble_fill),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.red,
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                label: AppStrings.chat,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone_fill),
                label: AppStrings.call,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz, size: 30),
                label: AppStrings.more,
              ),
            ],
          ),
        );
      },
    );
  }
}
