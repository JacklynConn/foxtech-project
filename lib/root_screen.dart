import 'package:flutter/material.dart';
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
          body: IndexedStack(
            index: _rootController.currentIndex,
            children: _rootController.lstScreens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _rootController.currentIndex,
            onTap: _rootController.bottomNavigationTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
