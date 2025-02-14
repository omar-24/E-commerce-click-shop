import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/core/widgets/main_fill_Button.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/custem_textformfield.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/verfication_dialog.dart';

import '../../../../../core/service/validation_service.dart';

class SetNewPassForm extends StatefulWidget {
  const SetNewPassForm({super.key});

  @override
  State<SetNewPassForm> createState() => _SetNewPassFormState();
}

class _SetNewPassFormState extends State<SetNewPassForm> {
  GlobalKey<FormState> SetNewPassKey = GlobalKey();
  TextEditingController password = TextEditingController();
  TextEditingController Confirmedpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: SetNewPassKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Must be at least 8 characters',
                style: TextFormFieldFont.hintFont,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustemTextformfield(
              icon: Icons.lock_outline,
              hint: "Enter your Password",
              validator: ValidationService.validatePassword,
              controller: password,
            ),
            SizedBox(
              height: 22,
            ),
            CustemTextformfield(
              icon: Icons.lock_outline,
              hint: "Confirm your Password",
              validator: ValidationService.validatePassword,
              controller: Confirmedpassword,
            ),
            SizedBox(
              height: 40,
            ),
            MainFillButton(
              onTap: () {
                if((SetNewPassKey.currentState!.validate())){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return VerificationDialog();
                  },
                );
                }
              },
              text: "Reset Password",
            ),
          ],
        ),
      ),
    );
  }
}
