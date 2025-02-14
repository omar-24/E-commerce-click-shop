import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/images.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:go_router/go_router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {

  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      // GoRouter.of(context).pushReplacement(
      //   Approuter.OnboardingPath,
      // );
      context.go(Approuter.OnboardingPath);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInLeft(
              duration: Duration(seconds: 2),
              child: Image.asset(
                AppImages.splashIcon,
                width: 150,
              )),
          FadeInRight(
              duration: Duration(seconds: 2),
              child: Image.asset(
                AppImages.splashLabel,
                width: 150,
              )),
        ],
      ),
    );
  }
}
