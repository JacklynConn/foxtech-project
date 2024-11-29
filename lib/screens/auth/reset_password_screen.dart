import 'package:flutter/material.dart';
import 'package:foxtech_project/common/styles/app_styles.dart';
import 'package:foxtech_project/widgets/texts/subtitle_widget.dart';
import 'package:lottie/lottie.dart';
import '../../common/styles/app_theme_color.dart';
import '../../widgets/forget_widget.dart';
import '/common/routes/name.dart';
import '../../common/utilities/assets_manager.dart';
import '../../widgets/button_widget.dart';
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
              Lottie.asset(AssetsManager.passwordAnimation, height: 300),
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
                    controller: phoneController,
                    labelText: 'Phone Number',
                    keyboardType: TextInputType.phone,
                    prefixIcon: const Icon(Icons.phone, color: Colors.grey),
                    // isRequired: true,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).nextFocus();
                    },
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 20),
                  TextInputWidget(
                    controller: passwordController,
                    labelText: 'Password',
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
                      child: Center(
                        child: Text(
                          'Submit',
                          style: AppStyles.bold(color: Colors.white, size: 20),
                          textAlign: TextAlign.center,
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
