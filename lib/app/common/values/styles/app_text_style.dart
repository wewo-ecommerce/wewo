import 'package:flutter/material.dart';

class AppTextStyle {
  const AppTextStyle._();

  static const TextStyle _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontFamily: "Quicksand");

  static final TextStyle semiBoldStyle = _textStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle buttonTextStyle = _textStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle thinStyle = _textStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w100,
  );
  static final TextStyle lineStyle = _textStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle regularStyle = _textStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle bodyStyle = _textStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  //Phần text add

}
