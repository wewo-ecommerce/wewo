
import '/core/app_export.dart';
import 'package:wewo/presentation/splash_phone_number_otp_screen/models/splash_phone_number_otp_model.dart';

class SplashPhoneNumberOtpController extends GetxController {
  Rx<SplashPhoneNumberOtpModel> splashPhoneNumberOtpModelObj =
      SplashPhoneNumberOtpModel().obs;

  RxString errOtp = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  verifyOTPctrl(String verId, String otp) {
    splashPhoneNumberOtpModelObj.value.verifyOTP(verId, otp, errOtp);
  }

  resendOTPctrl(String phone) {
    splashPhoneNumberOtpModelObj.value.resendOTP(phone);
  }

  goBack() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
