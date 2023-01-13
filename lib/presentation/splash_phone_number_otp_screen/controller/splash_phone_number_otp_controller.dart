
import 'package:firebase_auth/firebase_auth.dart';

import '/core/app_export.dart';
import 'package:wewo/presentation/splash_phone_number_otp_screen/models/splash_phone_number_otp_model.dart';

class SplashPhoneNumberOtpController extends GetxController {
  Rx<SplashPhoneNumberOtpModel> splashPhoneNumberOtpModelObj =
      SplashPhoneNumberOtpModel().obs;

  RxString errOTP = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  verifyOTPctrl(String verId, String otp) {
    splashPhoneNumberOtpModelObj.value.verifyOTP(verId, otp);
    errOTP.value = splashPhoneNumberOtpModelObj.value.getErrOTP;
  }

  goBack() {
    Get.back();
  }

  resendOTP(String phone) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+84$phone',
      verificationCompleted: (PhoneAuthCredential credential) {
        print("verificationCompleted");
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.toString());
        print("verification Failed");
      },
      codeSent: (String verificationId, int? resendToken) {
        
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("odeAutoRetrievalTimeout");
      },
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
