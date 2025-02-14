import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';

class MainOutlinebutton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const MainOutlinebutton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: OutlinedButton(
            onPressed: onTap,
            style: OutlinedButton.styleFrom(
                fixedSize: Size(423, 50),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: Text(
              text,
              style: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            )));
  }
}
