import '/screens/auth/signup_screen.dart';
import '../../root_screen.dart';
import '../../screens/auth/login_screen.dart';
import '../../themes/theme_screen.dart';
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
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.signUpScreen,
      page: () => const SignupScreen(),
    ),
  ];
}
