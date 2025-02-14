import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/fonts.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/verification_form.dart';
import 'package:go_router/go_router.dart';



class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (GoRouter.of(context).pop), icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Reset Password",
          style: AppFonts.AppBarTitle,
        ),
      ),
      body: Center(
        child: Column(children: [
          VerificationForm()
        ],),
      ),
    );
  }
}
