import 'package:flutter/material.dart';
import 'package:foxtech_project/common/themes/colors.dart';
import '/common/styles/app_strings.dart';
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
                        label: AppStrings.welcome,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                      Text.rich(
                        TextSpan(
                          text: AppStrings.to,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: AppStrings.foxTalk,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextInputWidget(
                        controller: phoneController,
                        labelText: AppStrings.phoneNumber,
                        keyboardType: TextInputType.phone,
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                        // isRequired: true,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).nextFocus();
                        },
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 20),
                      TextInputWidget(
                        controller: passwordController,
                        labelText: AppStrings.password,
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
                                Theme.of(context).colorScheme.primary,
                                Theme.of(context).colorScheme.onPrimary,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: SubtitleWidget(
                              label: AppStrings.login,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: lWhite,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SubtitleWidget(
                            label: AppStrings.dontHaveAccount,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.signUpScreen);
                            },
                            child: Text(
                              AppStrings.signUp,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16,
                              ),
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
                        label: AppStrings.copyRight,
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
