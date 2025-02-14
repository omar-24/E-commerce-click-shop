import"package:flutter/material.dart";

abstract class AppFonts{

  static const onboardingTitleFont = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 22.3 / 20,
    letterSpacing: -0.3,
    color: Colors.white,
  );
  static const AppBarTitle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 32,
    height: 22.3 / 20,
    letterSpacing: -0.3,
    color: Colors.black,
  );
}

abstract class TextFormFieldFont{
  static const hintFont = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    height: 22.3 / 20,
    letterSpacing: -0.3,
    color: Color(0xFFA19F9F),
  );
}