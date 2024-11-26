import 'package:flutter/material.dart';
import '../common/styles/app_theme_color.dart';
import '/controllers/auth_controller.dart';
import 'package:get/get.dart';

class TextInputWidget extends StatefulWidget {
  final String hintText;
  final bool isEnable;
  final bool isPassword;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool isRequired;

  TextInputWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType,
    this.focusNode,
    this.isPassword = false,
    this.isEnable = true,
    this.onFieldSubmitted,
    this.isRequired = false, this.textInputAction,
  });

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextFormField(
        controller: widget.controller,
        enabled: widget.isEnable,
        focusNode: widget.focusNode,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        obscureText: authController.passwordVisible.value && widget.isPassword,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: AppThemeColors.enableColor,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    authController.togglePasswordVisibility();
                  },
                  icon: Obx(
                    () {
                      return Icon(
                        authController.passwordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      );
                    },
                  ),
                )
              : null,
        ),
      );
    });
  }
}
