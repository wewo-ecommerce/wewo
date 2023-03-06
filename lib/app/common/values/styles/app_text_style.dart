import 'package:flutter/material.dart';

class AppTextStyle {
  const AppTextStyle._();

  ///[TextStyle]
  static const TextStyle _typeText = TextStyle(
      color: Colors.black, fontWeight: FontWeight.w400, fontFamily: 'Poppins');

  static final TextStyle normaltypeText = _typeText.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle semiBoldtypeText = _typeText.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

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
  static final TextStyle titleTextStyle = _textStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle mediumTextStyle = _textStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle smallTextStyle = _textStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle largeBoldTextStyle = _textStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
}
