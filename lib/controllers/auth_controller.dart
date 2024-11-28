import 'package:get/get.dart';

class AuthController extends GetxController {
  final passwordVisible = true.obs;
  final isLoading = false.obs;

  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }
}
