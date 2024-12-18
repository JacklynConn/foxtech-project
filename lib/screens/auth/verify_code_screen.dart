import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/common/themes/colors.dart';
import '/common/routes/name.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../common/styles/app_strings.dart';
import '../../controllers/auth_controller.dart';
import 'package:get/get.dart';
import '../../widgets/texts/subtitle_widget.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final authController = Get.find<AuthController>();
  String smsCode = "";
  int resendOTPCounter = 60;
  late Timer _timer;
  bool isButtonDisabled = false;

  @override
  void initState() {
    startOTPTimer();
    super.initState();
  }

  void startOTPTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (resendOTPCounter > 0) {
          resendOTPCounter--;
        } else {
          isButtonDisabled = false;
          _timer.cancel();
        }
      });
    });
  }

  void resendOTP() {
    setState(() {
      resendOTPCounter = 60;
      isButtonDisabled = true;
    });
    startOTPTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return authController.isLoading.value
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const SubtitleWidget(
                label: 'Verification',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(
                  Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                  color: lBlack,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: ListView(
              children: [
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SubtitleWidget(
                    label: AppStrings.enterVerificationCode,
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: lBlack,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: PinCodeTextField(
                    length: 6,
                    appContext: context,
                    obscureText: false,
                    showCursor: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(
                        RegExp(r'\D'),
                      ),
                    ],
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(50),
                      fieldHeight: 30,
                      fieldWidth: 30,
                      inactiveBorderWidth: 11,
                      inactiveFillColor: Colors.white,
                      inactiveColor: Colors.grey,
                      activeFillColor: Theme.of(context).colorScheme.primary,
                      selectedColor: Theme.of(context).colorScheme.primary,
                      selectedFillColor: Colors.white,
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    // errorAnimationController: errorController,
                    onChanged: (value) {
                      smsCode = value;
                    },
                    onCompleted: (smsCode) {
                      // authController.verifyOTP(smsCode);
                    },
                    beforeTextPaste: (text) {
                      return true;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    resendOTPCounter = 60;
                    Timer.periodic(const Duration(seconds: 1), (timer) {
                      if (resendOTPCounter == 0) {
                        timer.cancel();
                      } else {
                        resendOTPCounter--;
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: SubtitleWidget(
                            label:
                                'I haven\'t received the code (0:$resendOTPCounter)',
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RichText(
                    text: TextSpan(
                      text: AppStrings.verificationCodeHint,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '+85593973138',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const TextSpan(
                          text: AppStrings.youCanCheckBox,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(AppRoutes.rootScreen);
                      },
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                        ),
                        child: Obx(
                          () => authController.isLoading.value
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                )
                              : const Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SubtitleWidget(
                                        label: AppStrings.verify,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
