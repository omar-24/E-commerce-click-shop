import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: AppFonts.AppBarTitle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
