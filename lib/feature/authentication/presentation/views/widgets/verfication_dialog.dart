import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/images.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:gcamp_team10/core/widgets/main_fill_Button.dart';
import 'package:go_router/go_router.dart';

class VerificationDialog extends StatelessWidget {
  const VerificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20,),
            Text(
              'Password Updated',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(AppImages.SuccessIcon),
            SizedBox(height: 10),
            Text(
              'You password has been changed successfully.\nuse your new password to log in.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12,color: Colors.grey),
            ),
            SizedBox(height: 20),
            // Wrap buttons in a Row to show them horizontally
            MainFillButton(
                text: "Done",
                onTap: () {
                  context.go(Approuter.HomePath); // Close the dialog
                })
          ],
        ),
      ),
    );
  }
}
