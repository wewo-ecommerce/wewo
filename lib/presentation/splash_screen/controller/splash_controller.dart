import '/core/app_export.dart';
import 'package:wewo/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  
  late bool _check;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 10000), () async {
      _check = await splashModelObj.value.checkLogIn();
      if(_check) {
        Get.toNamed(AppRoutes.homeContainerScreen);
      }else{
        Get.toNamed(AppRoutes.splashPhoneNumberScreen);
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
