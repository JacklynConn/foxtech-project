import 'package:flutter/material.dart';
import 'package:foxtech_project/common/styles/app_strings.dart';
import '/common/utilities/assets_manager.dart';
import '../common/routes/name.dart';
import '/widgets/text_input_widget.dart';
import '/widgets/texts/subtitle_widget.dart';
import 'package:get/get.dart';

class ForgetWidget extends StatefulWidget {
  const ForgetWidget({super.key});

  @override
  State<ForgetWidget> createState() => _ForgetWidgetState();
}

class _ForgetWidgetState extends State<ForgetWidget> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // alert dialog
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: AlertDialog(
                    titlePadding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    backgroundColor: Colors.white,
                    title: Column(
                      children: [
                        Image.asset(
                          AssetsManager.forgetAnimation,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        SubtitleWidget(
                          label: AppStrings.enterPhoneNumber,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                    content: Form(
                      child: TextInputWidget(
                        labelText: 'Phone Number',
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        prefixIcon: const Icon(
                          Icons.phone,
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.forgotPasswordScreen);
                        },
                        child: SubtitleWidget(
                          label: 'Send',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
      child: SubtitleWidget(
        label: 'Forget Password?',
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
