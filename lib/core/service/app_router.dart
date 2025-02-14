
import 'package:flutter/material.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/forget_password_view.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/login_view.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/register_view.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/verfication_view.dart';
import 'package:gcamp_team10/feature/authentication/presentation/views/widgets/setnew_pass_form.dart';
import 'package:gcamp_team10/feature/home/presentation/views/favorite_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/home_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/profile_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/setting_view.dart';
import 'package:gcamp_team10/feature/onboarding/presentation/views/onboarding_view.dart';
import 'package:gcamp_team10/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../feature/authentication/presentation/views/setnew_password_view.dart';

abstract class Approuter{
  static const SplashPath="/";
  static const OnboardingPath="/onboarding";
  static const LoginPath="/login";
  static const RegisterPath="/register";
  static const ForgetPath="/forgetpassword";
  static const VervicationPath="/verfication";
  static const SetNewPassPath="/setpassword";
  static const HomePath="/home";
  static const ProfilePath="/profile";
  static const FavoritePath="/favotite";
  static const SettingPath="/setting";



  static final router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: OnboardingPath,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: LoginPath,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: RegisterPath,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: ForgetPath,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: VervicationPath,
        builder: (context, state) => const VerificationView(),
      ),
      GoRoute(
        path: SetNewPassPath,
        builder: (context, state) => const SetnewPasswordView(),
      ),
      GoRoute(
        path: HomePath,
        builder: (context, state) => const HomeView(),
      ),

      GoRoute(
        path: ProfilePath,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: FavoritePath,
        builder: (context, state) => const FavoriteView(),
      ),
      GoRoute(
        path: SettingPath,
        builder: (context, state) =>  SettingView(),
      ),

    ],
  );
}