import 'package:get/get.dart';

import 'package:new_wewo/app/modules/start/controllers/start_controller.dart';

class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartController>(
      () => StartController(),
    );
  }
}
