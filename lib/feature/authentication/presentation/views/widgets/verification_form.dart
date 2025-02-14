import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gcamp_team10/core/assets/colors.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:gcamp_team10/core/widgets/main_fill_Button.dart';
import 'package:go_router/go_router.dart';

class VerificationForm extends StatefulWidget {
  const VerificationForm({super.key});

  @override
  State<VerificationForm> createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  late String code;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'We send a code to ranasame@gmail.com',
              style: TextFormFieldFont.hintFont,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          OtpTextField(
            numberOfFields: 4,
            showFieldAsBox: true,
            borderColor: AppColor.primaryColor,
            enabledBorderColor: AppColor.grey.withAlpha(100),
            focusedBorderColor: AppColor.primaryColor,
            cursorColor: AppColor.primaryColor,
            onSubmit: (otpcode) {
              code = otpcode;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          MainFillButton(
            onTap: () {GoRouter.of(context).push(Approuter.SetNewPassPath);},
            text: "Continue",
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don’t receive the email?",
                style: TextStyle(color: Colors.black, fontFamily: 'Comfortaa'),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    " Click to resend",
                    style: TextStyle(
                        color: AppColor.secondColor,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
