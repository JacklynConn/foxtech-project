import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  // Observable to track theme
  Rx<ThemeMode> themeMode = ThemeMode.system.obs;

  // Storage key for saving theme
  final _storageKey = 'isDarkMode';

  // Reference to GetStorage
  final GetStorage _storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromStorageOrSystem();
  }

  void _loadThemeFromStorageOrSystem() {
    // Check if the theme is already saved in storage
    if (_storage.hasData(_storageKey)) {
      final isDarkMode = _storage.read<bool>(_storageKey);
      themeMode.value = isDarkMode! ? ThemeMode.dark : ThemeMode.light;
    } else {
      // If no preference saved, use system theme
      themeMode.value = ThemeMode.system;
    }
  }

  void toggleTheme() {
    // Toggle between light and dark
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.light;
    }
    // Save to storage
    _storage.write(_storageKey, themeMode.value == ThemeMode.dark);
  }

  void setSystemTheme() {
    // Set to system theme and clear storage preference
    themeMode.value = ThemeMode.system;
    _storage.remove(_storageKey);
  }
}