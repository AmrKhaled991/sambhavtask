import 'package:flutter/material.dart';

class Styles {
  static TextStyle textSemiBold24() {
    return TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
  }

  static TextStyle textSemiBold20() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      shadows: [
        Shadow(
          color: Colors.black.withOpacity(0.2),
          offset: const Offset(0, 1),
          blurRadius: 2,
        ),
      ],
    );
  }

  static TextStyle textBold20() {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  }

  static TextStyle textBold18() {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w700);
  }

  static TextStyle textSemiBold12() {
    return TextStyle(fontSize: 12, fontWeight: FontWeight.w600);
  }

  static TextStyle textRegular12() {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade600,
    );
  }

  static TextStyle textSemiBold18() {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  }

  static TextStyle textSemiBoldWhite18() {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  }

  static TextStyle textSemiBold16() {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  }

  static TextStyle textSemiBold14() {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.w600);
  }

  static TextStyle textSemiRegular14() {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  }

  static TextStyle textSemiRegular8() {
    return TextStyle(fontSize: 8, fontWeight: FontWeight.w400);
  }

  static TextStyle textSemiRegular10() {
    return TextStyle(fontSize: 8, fontWeight: FontWeight.w400);
  }
}
