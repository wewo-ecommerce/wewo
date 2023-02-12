import 'package:get/get.dart';
import 'package:new_wewo/app/modules/store_view/controllers/store_view_controller.dart';

class StoreViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreViewController>(
      () => StoreViewController(),
    );
  }
}