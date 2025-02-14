import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';

import 'widgets/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: AppFonts.AppBarTitle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            RegisterForm(),
          ],
        ),
      ),
    );
  }
}
