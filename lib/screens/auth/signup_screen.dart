import 'package:flutter/material.dart';
import '/screens/auth/verify_code_screen.dart';
import '/common/styles/app_styles.dart';
import '/widgets/texts/subtitle_widget.dart';
import 'package:lottie/lottie.dart';
import '/common/routes/name.dart';
import '../../common/utilities/assets_manager.dart';
import '../../widgets/text_input_widget.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.deepOrangeAccent,
                                width: 1,
                              ),
                            ),
                            child: Lottie.asset(
                              AssetsManager.profileAnimation,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Positioned(
                            right: 6,
                            bottom: 6,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepOrangeAccent,
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const SubtitleWidget(
                        label: 'Create an account',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 20),
                      TextInputWidget(
                        controller: TextEditingController(),
                        labelText: 'Username',
                        isPassword: false,
                        keyboardType: TextInputType.name,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextInputWidget(
                        controller: phoneController,
                        labelText: 'Phone Number',
                        keyboardType: TextInputType.phone,
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextInputWidget(
                        controller: passwordController,
                        labelText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        isPassword: true,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => const VerifyCodeScreen(),
                            transition: Transition.rightToLeft,
                          );
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
                              label: 'Sign Up',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SubtitleWidget(
                            label: 'Already have an account?',
                            fontSize: 15,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.loginScreen);
                            },
                            child: SubtitleWidget(
                              label: 'Login',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: const SubtitleWidget(
                        label:
                            '@ 2024 FoxTech Development. All rights reserved.',
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
