import 'package:flutter/material.dart';
import '/common/routes/name.dart';
import '../../common/utilities/assets_manager.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_input_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  const SizedBox(
                    width: 200,
                    height: 200,
                    child: Image(
                      image: AssetImage(AssetsManager.foxtechLogo),
                    ),
                  ),
                  const Text(
                    'Welcome to FoxTech',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextInputWidget(
                    controller: TextEditingController(),
                    hintText: 'Phone Number',
                    isPassword: false,
                  ),
                  const SizedBox(height: 20),
                  TextInputWidget(
                    controller: TextEditingController(),
                    hintText: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Expanded(
                        child: ButtonWidget(
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.signUpScreen);
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'App Version 1.0.0',
                    style: TextStyle(
                      color: Colors.deepOrangeAccent.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
