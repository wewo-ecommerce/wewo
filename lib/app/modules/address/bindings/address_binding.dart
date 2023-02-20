import 'package:get/get.dart';
import 'package:new_wewo/app/modules/address/controllers/address_create_controller.dart';
import 'package:new_wewo/app/modules/address/controllers/address_edit_controller.dart';
import 'package:new_wewo/app/modules/address/controllers/address_list_controller.dart';

class AddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddressListController());
    Get.lazyPut(() => AddressCreateController());
    Get.lazyPut(() => AddressEditController(
      Get.parameters['addressID'] ?? ''
    ));
  }
}
