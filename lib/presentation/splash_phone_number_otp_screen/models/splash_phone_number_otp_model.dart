import 'package:firebase_auth/firebase_auth.dart';
import 'package:wewo/core/app_export.dart';
import 'package:wewo/presentation/splash_phone_number_screen/controller/info.dart';

class SplashPhoneNumberOtpModel {


  verifyOTP(String verId, String otp, RxString errOtp) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId:  verId,
          smsCode: otp
        )
      );
      print("success");
      Get.toNamed(AppRoutes.homeContainerScreen);
      if(errOtp.value != "") {
        errOtp.value = "";
      }
    }
    catch(e) {
      errOtp.value = "error";
    }
  }

  resendOTP(String phone) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) {
        print("verificationCompleted");
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.toString());
        print("verification Failed");
      },
      codeSent: (String verificationId, int? resendToken) {
        Info.verId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("odeAutoRetrievalTimeout");
      },
    );
  }
}
