import 'package:get/get.dart';
import 'package:new_wewo/app/modules/auth/controllers/otp_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(() => OtpController());
  }
}
