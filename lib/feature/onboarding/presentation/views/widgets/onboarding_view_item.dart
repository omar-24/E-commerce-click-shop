import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gcamp_team10/core/widgets/main_outline_Button.dart';
import 'package:gcamp_team10/feature/onboarding/data/models/onboarding_view_item_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingViewItem extends HookWidget {
  const OnboardingViewItem({
    super.key,
    required this.mainButton,
    required this.secondButton,
    required this.data,
    required this.controller,
    required this.pageIndex,
  });

  final OnboardingViewItemModel data;
  final PageController controller;
  final int pageIndex;
  final dynamic mainButton;
  final MainOutlinebutton secondButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(data.image),
          SizedBox(height: 25),
          Text(data.title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 24)),
          SizedBox(height: 25),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: WormEffect(
              spacing: 8.0,
              radius: 10.0,
              dotWidth: 10.0,
              dotHeight: 10.0,
              strokeWidth: 1.5,
              dotColor: const Color.fromARGB(120, 158, 158, 158),
              activeDotColor: Colors.indigo,
            ),
          ),
          SizedBox(height: 25),
          mainButton,
          SizedBox(height: 20),
          secondButton,
        ],
      ),
    );
  }
}
