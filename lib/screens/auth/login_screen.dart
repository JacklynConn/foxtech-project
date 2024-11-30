import 'package:flutter/material.dart';
import '/common/styles/app_styles.dart';
import '/widgets/texts/subtitle_widget.dart';
import '../../widgets/forget_widget.dart';
import '/common/routes/name.dart';
import '../../common/utilities/assets_manager.dart';
import '../../widgets/text_input_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      const SizedBox(
                        width: 200,
                        height: 200,
                        child: Image(
                          image: AssetImage(AssetsManager.foxtechLogo),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SubtitleWidget(
                        label: 'Welcome!',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'to ',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: 'FoxTalk',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextInputWidget(
                        controller: phoneController,
                        labelText: 'Phone Number',
                        keyboardType: TextInputType.phone,
                        prefixIcon:
                            const Icon(Icons.phone, color: Colors.grey),
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
                        prefixIcon:
                            const Icon(Icons.lock, color: Colors.grey),
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
                              'Login',
                              style: AppStyles.bold(
                                  color: Colors.white, size: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SubtitleWidget(
                            label: 'Don\'t have an account?',
                            fontSize: 15,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.signUpScreen);
                            },
                            child: SubtitleWidget(
                              label: 'Sign Up',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const ForgetWidget(),
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
