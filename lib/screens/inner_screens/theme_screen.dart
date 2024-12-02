import 'dart:io';
import 'package:flutter/material.dart';
import '/widgets/texts/appbar_title_widget.dart';
import 'package:get/get.dart';
import '../../controllers/theme_controller.dart';

class ThemeScreen extends StatelessWidget {
  final ThemeController themeController = Get.find();

  ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Scaffold(
          key: ValueKey(themeController.themeMode.value),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            title: const AppBarTitleWidget(
              label: 'Theme',
            ),
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios,
                color: themeController.themeMode.value == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Current Theme: ${themeController.themeMode.value == ThemeMode.dark ? 'Dark' : themeController.themeMode.value == ThemeMode.light ? 'Light' : 'System'}',
                  style: TextStyle(
                    fontSize: 18,
                    color: themeController.themeMode.value == ThemeMode.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: themeController.toggleTheme,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        themeController.themeMode.value == ThemeMode.dark
                            ? Colors.grey[800]
                            : Colors.blue,
                    foregroundColor:
                        themeController.themeMode.value == ThemeMode.dark
                            ? Colors.white
                            : Colors.black,
                  ),
                  child: const Text('Toggle Light/Dark'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: themeController.setSystemTheme,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        themeController.themeMode.value == ThemeMode.dark
                            ? Colors.grey[800]
                            : Colors.blue,
                    foregroundColor:
                        themeController.themeMode.value == ThemeMode.dark
                            ? Colors.white
                            : Colors.black,
                  ),
                  child: const Text('Use System Theme'),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
