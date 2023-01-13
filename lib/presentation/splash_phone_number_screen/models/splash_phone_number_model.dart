import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wewo/presentation/splash_phone_number_otp_screen/splash_phone_number_otp_screen.dart';

class SplashPhoneNumberModel {

  String _err = "";

  String get getErr {
    return _err;
  }

  bool _phoneCheck(String phone) {
    if(phone.isEmpty) {
      _err = "Vui lòng điền số điện thoại";
      return false;
    }else{
      final rexPhone = RegExp(r'^[0-9]{9}$');
      if(!rexPhone.hasMatch(phone)) {
        _err = "Số điện thoại không đúng";
        return false;
      }
    }
    _err = "";
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
        Get.to(SplashPhoneNumberOtpScreen(verId: verificationId, phone: '+84$phone'));
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("odeAutoRetrievalTimeout");
      },
    );
  }

  phoneVali(String phone) {
    if(_phoneCheck(phone)) {
      _verifyPhoneNumber(phone);
    }
  }
}
