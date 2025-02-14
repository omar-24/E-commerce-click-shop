import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:go_router/go_router.dart';


class NextOnboardingButton extends StatelessWidget {
  final int currentPage;
  final PageController pageController;
  const NextOnboardingButton({super.key, required this.currentPage, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: (){
            if (currentPage < 2) {
              pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {
            context.go(Approuter.LoginPath);
            }
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(423, 50),
              backgroundColor: AppColor.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            "Next",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          )),
    );
  }
}
