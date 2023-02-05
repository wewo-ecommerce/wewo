import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wewo/presentation/splash_phone_number_screen/controller/validator.dart';
import 'package:wewo/routes/app_routes.dart';

import '../controller/info.dart';

class SplashPhoneNumberModel {

  bool _phoneCheck(String phone, RxString err) {
    if(Validators.fieldNull(phone)) {
      err.value = "Vui lòng điền số điện thoại";
      return false;
    }

    if(!Validators.phoneReal(phone)) {
      err.value = "Số điện thoại không đúng";
      return false;
    }

    if(err.value != "") {
      err.value = "";
    }
    return true;
  }

  _verifyPhoneNumber(String phone) async {
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
        Info.verId.value = verificationId;
        Get.toNamed(AppRoutes.splashPhoneNumberOtpScreen);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("odeAutoRetrievalTimeout");
      },
    );
  }

  phoneVali(String phone, RxString err) {
    if(_phoneCheck(phone, err)) {
      String subPhone = phone.substring(1);
      _verifyPhoneNumber(subPhone);
    }
  }
}
