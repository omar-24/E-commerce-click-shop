import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:gcamp_team10/core/service/validation_service.dart';
import 'package:gcamp_team10/core/widgets/main_fill_Button.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/custem_textformfield.dart';
import 'package:go_router/go_router.dart';


class ForgetpasswordForm extends StatefulWidget {
  const ForgetpasswordForm({super.key});

  @override
  State<ForgetpasswordForm> createState() => _ForgetpasswordFormState();
}

class _ForgetpasswordFormState extends State<ForgetpasswordForm> {
  GlobalKey<FormState> ForgetKey = GlobalKey();
  TextEditingController email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: ForgetKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'No worries we will send you Reset instructions  ',
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
            SizedBox(
              height: 22,
            ),
            MainFillButton(
              onTap: () {
                if((ForgetKey.currentState!.validate())){
                GoRouter.of(context).push(Approuter.VervicationPath);
                }
              },
              text: "Reset Password",
            ),
            const SizedBox(
              height: 22,
            ),

          ],
        ),
      ),
    );
  }
}
