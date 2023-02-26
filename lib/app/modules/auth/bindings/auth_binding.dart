import 'package:get/get.dart';
import 'package:new_wewo/app/modules/auth/controllers/login_controller.dart';
import 'package:new_wewo/app/modules/auth/controllers/otp_controller.dart';
import 'package:new_wewo/app/modules/auth/controllers/register_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
