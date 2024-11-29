import '/screens/auth/forget_verify_screen.dart';
import '/screens/auth/reset_password_screen.dart';
import '/screens/auth/verify_code_screen.dart';
import '../../screens/inner_screens/theme_screen.dart';
import '/screens/auth/signup_screen.dart';
import '../../root_screen.dart';
import '../../screens/auth/login_screen.dart';
import '/common/routes/name.dart';
import '/splash_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.rootScreen,
      page: () => const RootScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.themeScreen,
      page: () => ThemeScreen(),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => const LoginScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.signUpScreen,
      page: () => const SignupScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.verificationScreen,
      page: () => const VerifyCodeScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.forgotPasswordScreen,
      page: () => const ForgetVerifyScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.resetPasswordScreen,
      page: () => const ResetPasswordScreen(),
      transition: Transition.rightToLeft,
    ),
  ];
}
