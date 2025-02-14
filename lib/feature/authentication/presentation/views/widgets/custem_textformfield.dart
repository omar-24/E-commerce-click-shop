import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';

class CustemTextformfield extends StatelessWidget {
  final IconData icon;
  final String hint;
  final String? Function(String?) validator;
  final TextEditingController controller;

  const CustemTextformfield(
      {super.key,
      required this.icon,
      required this.hint,
      required this.validator,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.secondColor,
      decoration: InputDecoration(
        hintStyle: TextFormFieldFont.hintFont,
        hintText: hint,
        filled: true,
        fillColor: Colors.white.withOpacity(.75),
        prefixIcon: Icon(
          icon,
          color: AppColor.grey,
          size: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: AppColor.grey, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: AppColor.grey, width: 2),
        ),
      ),
      validator:validator,
      controller: controller,
    );
  }
}
