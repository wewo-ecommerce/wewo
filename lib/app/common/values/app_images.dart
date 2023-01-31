import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/exports.dart';

class AppImages {
  static String appleIc = "assets/icons/apple.svg";
  static const String icGallery = 'assets/images/ic_gallery.png';
  static const String loginImg = 'assets/images/login_img.json';
  static String googleIc = "assets/icons/google-plus.svg";
  static String icKienLong = "assets/icons/ic_logo.svg";

  ///add app images here
  const AppImages._();

  static const Map<String, List<double>> _svgImageSize = {};

  static Widget svgUrl(String name,
      {Color? color,
      double? width,
      double? height,
      BoxFit fit = BoxFit.contain,
      bool circle = false,
      Widget? placeholderWidget,
      Map<String, String>? header,
      EdgeInsets padding = const EdgeInsets.all(6.0)}) {
    return Padding(
      padding: padding,
      child: SvgPicture.network(
        name,
        color: color,
        placeholderBuilder: (context) => placeholderWidget ?? Container(),
        width: width,
        height: height,
        fit: fit,
        headers: header,
      ),
    );
  }

  //auth

}

SizedBox svg(
  String name, {
  Color? color,
  double? width,
  double? height,
  Widget Function(BuildContext context)? placeholderBuilder,
  String defaultImage = "",
  BoxFit fit = BoxFit.contain,
}) {
  return SizedBox(
    width: width ?? 20.sp,
    height: height ?? 20.sp,
    child: SvgPicture.asset(
      name,
      color: color,
      fit: fit,
      allowDrawingOutsideViewBox: true,
    ),
  );
}
