import 'package:diary_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isObscureText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? width;

  TextFieldWidget({
    super.key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        cursorColor: AppColors.gray,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscureText,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xff90A3BF)),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          prefixText: ' ',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: AppColors.gray,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: AppColors.gray,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: AppColors.gray,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
