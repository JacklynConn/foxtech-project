import 'package:foxtech_project/screens/themes/theme_screen.dart';

import '../../root_screen.dart';
import '/common/routes/name.dart';
import '/splash_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.rootScreen,
      page: () => const RootScreen(),
    ),
    GetPage(
      name: AppRoutes.themeScreen,
      page: () => ThemeScreen(),
    ),
  ];
}
