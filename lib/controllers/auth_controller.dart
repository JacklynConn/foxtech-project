import 'package:get/get.dart';

class AuthController extends GetxController {
  final passwordVisible = true.obs;

  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }
}
