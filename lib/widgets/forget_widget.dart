import 'package:flutter/material.dart';
import 'package:foxtech_project/widgets/text_input_widget.dart';
import 'package:foxtech_project/widgets/texts/subtitle_widget.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

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
                AlertDialog(
                  titlePadding: const EdgeInsets.all(0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  title: Column(
                    children: [
                      Lottie.asset(
                        'assets/lottie/forget_animation.json',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      SubtitleWidget(
                        label: 'Enter your phone number',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  content: Form(
                    child: TextInputWidget(
                      hintText: 'Phone Number',
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
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
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: SubtitleWidget(
                        label: 'Send',
                        fontSize: 15,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
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
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
