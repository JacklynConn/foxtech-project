import 'package:flutter/material.dart';
import 'common/themes/theme.dart';
import '/common/routes/name.dart';
import '/controllers/theme_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'common/routes/pages.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        title: 'KaKoa Talk',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeController.themeMode.value,
        initialRoute: AppRoutes.INITIAL,
        getPages: AppPages.routes,
      );
    });
  }
}
