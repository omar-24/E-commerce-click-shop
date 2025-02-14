import 'package:flutter/material.dart';
import 'package:gcamp_team10/feature/splash/presentation/widgets/splash_body.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SplashBody(),
    );
  }
}
