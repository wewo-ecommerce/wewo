import 'package:firebase_auth/firebase_auth.dart';

class SplashPhoneNumberOtpModel {

  String _errOTP ="";

  String get getErrOTP => _errOTP;

  verifyOTP(String verID, String otp) async {
    await FirebaseAuth.instance.signInWithCredential(
      PhoneAuthProvider.credential(
        verificationId: verID,
        smsCode: otp
      )
    ).then((value) => print("Success")).catchError((e) {_errOTP = "Đã có lỗi, vui lòng thử lại";});
  }
}
