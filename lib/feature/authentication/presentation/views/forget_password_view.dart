import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/forgetPassword_form.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (GoRouter.of(context).pop), icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Forget Password ?",
          style: AppFonts.AppBarTitle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ForgetpasswordForm(),
          ],
        ),
      ),
    );
  }
}
