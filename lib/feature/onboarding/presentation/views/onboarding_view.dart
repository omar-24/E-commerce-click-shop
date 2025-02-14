import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gcamp_team10/core/assets/images.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:gcamp_team10/core/widgets/main_fill_Button.dart';
import 'package:gcamp_team10/core/widgets/main_outline_Button.dart';
import 'package:gcamp_team10/feature/onboarding/data/models/onboarding_view_item_model.dart';
import 'package:gcamp_team10/feature/onboarding/presentation/views/widgets/next_onboarding_buttom.dart';
import 'package:gcamp_team10/feature/onboarding/presentation/views/widgets/onboarding_view_item.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends HookWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                OnboardingViewItem(
                  data: OnboardingViewItemModel(
                      title: "Welcome to the world of easy shopping",
                      image: AppImages.onboardingBag1),
                  controller: controller,
                  pageIndex: 0,
                  mainButton: NextOnboardingButton(
                      currentPage: 0, pageController: controller),
                  secondButton: MainOutlinebutton(
                      text: "skip",
                      onTap: () {
                        context.go(Approuter.LoginPath);
                      }),
                ),
                OnboardingViewItem(
                  data: OnboardingViewItemModel(
                      title: "Exclusive offers tailored for you",
                      image: AppImages.onboardingSecurity2),
                  controller: controller,
                  pageIndex: 1,
                  mainButton: NextOnboardingButton(
                      currentPage: 1, pageController: controller),
                  secondButton: MainOutlinebutton(
                      text: "skip",
                      onTap: () {
                        context.go(Approuter.LoginPath);
                      }),
                ),
                OnboardingViewItem(
                  data: OnboardingViewItemModel(
                      title: "Secure and fast payment with a single touch",
                      image: AppImages.onboardingGift3),
                  controller: controller,
                  pageIndex: 2,
                  mainButton: MainFillButton(text: "Register", onTap: () {context.go(Approuter.RegisterPath);}),
                  secondButton: MainOutlinebutton(
                      text: "skip",
                      onTap: () {
                        context.go(Approuter.LoginPath);
                      }),

                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
