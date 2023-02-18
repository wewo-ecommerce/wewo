import 'package:get/get.dart';
import 'package:new_wewo/app/modules/address/controllers/address_controller.dart';


class AddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddressController>(
      () => AddressController(),
    );
  }
}
