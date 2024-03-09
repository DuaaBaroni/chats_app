
import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      required this.prefixIcon,
      this.suffixIcon,
      this.obscureText, required Color color});

  final String label;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          suffixIcon: suffixIcon ?? const SizedBox(),
          labelText: label,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.subTitle),
            borderRadius: BorderRadius.circular(20),
           
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.subTitle),
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}