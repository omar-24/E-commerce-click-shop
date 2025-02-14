import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';

class ButtonDivider extends StatelessWidget {
  const ButtonDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColor.grey,
            thickness: 1,
            endIndent: 10, // Space between text and line
          ),
        ),
        Text(
          "Or Login with",
          style: TextStyle(
            color: AppColor.grey,
            fontSize: 14,
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColor.grey,
            thickness: 1,
            indent: 10, // Space between text and line
          ),
        ),
      ],
    );
  }
}

