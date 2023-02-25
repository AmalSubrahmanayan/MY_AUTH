import 'package:authentication/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blueColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkblueColor,
            ),
          ),
          fillColor: AppColors.whiteColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.greyDartColor,
          ),
        ),
      ),
    );
  }
}
