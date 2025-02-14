import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';
import 'package:gcamp_team10/core/assets/images.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onTap;

  const GoogleButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: OutlinedButton.icon(
          icon: ImageIcon(AssetImage(AppImages.GoogleIcon),size: 32,),
      label: Text(
        "Sign up with google",
        style: TextStyle(
            color: AppColor.Black, fontSize: 14, fontWeight: FontWeight.w700),
      ),
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
          fixedSize: Size(423, 50),
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
    ));
  }
}
