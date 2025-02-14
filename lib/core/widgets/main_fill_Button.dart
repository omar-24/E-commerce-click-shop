import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';

class MainFillButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const MainFillButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              fixedSize: Size(423, 50),
              backgroundColor: AppColor.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Comfortaa',
                fontSize: 16,
                fontWeight: FontWeight.w700),
          )),
    );
  }
}
