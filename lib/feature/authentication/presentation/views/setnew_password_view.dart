import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/setnew_pass_form.dart';
import 'package:go_router/go_router.dart';

import 'widgets/forgetPassword_form.dart';

class SetnewPasswordView extends StatelessWidget {
  const SetnewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (GoRouter.of(context).pop), icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Set New Password",
          style: AppFonts.AppBarTitle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SetNewPassForm(),
          ],
        ),
      ),
    );
  }
}
