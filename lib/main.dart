import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/forget_password_view.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/login_view.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/register_view.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/setnew_password_view.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/setnew_pass_form.dart';
import 'package:gcamp_team10/feature/home/presentation/views/favorite_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/home_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/profile_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/setting_view.dart';
import 'package:gcamp_team10/feature/onboarding/presentation/views/onboarding_view.dart';
import 'package:gcamp_team10/feature/splash/presentation/views/splash_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Approuter.router,
    );
  }
}
