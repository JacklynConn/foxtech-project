import 'package:flutter/material.dart';
import 'package:foxtech_project/common/styles/app_theme_color.dart';

import '../common/styles/app_styles.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppThemeColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      onPressed: () {},
      child: Text(
        'Login',
        style: AppStyles.bold(color: Colors.white, size: 24),
      ),
    );
  }
}
