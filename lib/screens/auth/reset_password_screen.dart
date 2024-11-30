import 'package:flutter/material.dart';
import '/widgets/texts/subtitle_widget.dart';
import 'package:lottie/lottie.dart';
import '/common/routes/name.dart';
import '../../common/utilities/assets_manager.dart';
import '../../widgets/text_input_widget.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              Lottie.asset(AssetsManager.passwordAnimation, height: 220),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SubtitleWidget(
                    label: 'Reset Password',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 20),
                  TextInputWidget(
                    controller: passwordController,
                    labelText: 'New Password',
                    isPassword: true,
                    prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(AppRoutes.rootScreen);
                    },
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).highlightColor,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Center(
                        child: SubtitleWidget(
                          label: 'Reset',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
