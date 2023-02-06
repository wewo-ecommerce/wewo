
import '/core/app_export.dart';
import 'package:wewo/presentation/splash_phone_number_screen/models/splash_phone_number_model.dart';

class SplashPhoneNumberController extends GetxController {
  Rx<SplashPhoneNumberModel> splashPhoneNumberModelObj =
      SplashPhoneNumberModel().obs;
  
  RxString err = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  phoneValiCtrl(String phone) {
    splashPhoneNumberModelObj.value.phoneVali(phone, err);
  }

  @override
  void onClose() {
    super.onClose();
    print("close");
  }
}
