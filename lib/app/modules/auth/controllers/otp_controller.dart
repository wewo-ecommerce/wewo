import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/routes/app_pages.dart';
import 'package:otp_text_field/otp_text_field.dart';

class OtpController extends GetxController {
  OtpFieldController otpController = OtpFieldController();

  void verifyOtp(String pin) {
    if (pin.length == 6) {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  void resendOtp() {}
}
