import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:gcamp_team10/core/service/validation_service.dart';
import 'package:gcamp_team10/core/widgets/google_button.dart';
import 'package:gcamp_team10/core/widgets/main_fill_Button.dart';
import 'package:gcamp_team10/core/widgets/main_outline_Button.dart';
import 'package:go_router/go_router.dart';

import 'button_divider.dart';
import 'custem_textformfield.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> SignupKey = GlobalKey();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: SignupKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome ! please enter your details ',
                style: TextFormFieldFont.hintFont,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustemTextformfield(
              icon: Icons.person_2_outlined,
              hint: "Enter your Name",
              validator: ValidationService.validateNotEmpty,
              controller: name,
            ),
            SizedBox(height: 18),
            CustemTextformfield(
              icon: Icons.email_outlined,
              hint: "Enter your Email",
              validator: ValidationService.validateEmail,
              controller: email,
            ),
            SizedBox(height: 18),
            CustemTextformfield(
              icon: Icons.lock_outline,
              hint: "Enter your Password",
              validator: ValidationService.validatePassword,
              controller: password,
            ),
            SizedBox(height: 22),
            Text(
              ' Password must be at least 8 characters',
              style: TextFormFieldFont.hintFont,
            ),
            SizedBox(height: 100),
            MainFillButton(
              onTap: () {
                if (SignupKey.currentState!.validate()) {
                 context.go(Approuter.HomePath);
                }
              },
              text: "Sign up",
            ),
            const SizedBox(
              height: 22,
            ),
            ButtonDivider(),
            const SizedBox(
              height: 22,
            ),
            GoogleButton(
              onTap: () {},
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextFormFieldFont.hintFont,
                ),
                InkWell(
                    onTap: () {context.go(Approuter.LoginPath);},
                    child: Text(
                      " Log In",
                      style: TextStyle(
                          color: AppColor.secondColor,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
