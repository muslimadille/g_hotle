import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
        border: UnderlineInputBorder(),
        prefixIcon: prefixIcon,
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
