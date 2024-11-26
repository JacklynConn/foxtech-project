import 'package:flutter/material.dart';
import '/common/routes/name.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.loginScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset('assets/images/foxtech_logo.png'),
            ),
            const CircularProgressIndicator(
              color: Colors.deepOrangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
