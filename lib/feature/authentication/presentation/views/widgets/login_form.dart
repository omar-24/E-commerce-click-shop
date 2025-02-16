import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:gcamp_team10/core/service/validation_service.dart';
import 'package:gcamp_team10/core/widgets/google_button.dart';
import 'package:gcamp_team10/core/widgets/main_fill_Button.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/button_divider.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/remember_checkBox.dart';
import 'package:go_router/go_router.dart';

import 'custem_textformfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> LoginKey = GlobalKey();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: LoginKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome Back ! please enter your details ',
                style: TextFormFieldFont.hintFont,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
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
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RememberCheckbox(),
                TextButton(
                    onPressed: () {GoRouter.of(context).push(Approuter.ForgetPath);},
                    child:  Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: AppColor.secondColor, fontFamily: 'Comfortaa'),
                    ))
              ],
            ),
            SizedBox(height: 100),
            MainFillButton(
              onTap: () {
                if (LoginKey.currentState!.validate()) {
                  context.go(Approuter.RootPath);
                }
              },
              text: "Log in",
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
                  "Don't have an account?",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'Comfortaa'),
                ),
                InkWell(
                    onTap: () {context.go(Approuter.RegisterPath);},
                    child: Text(
                      " Sign up",
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
