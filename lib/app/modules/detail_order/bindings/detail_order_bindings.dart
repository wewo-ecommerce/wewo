import 'package:get/get.dart';
import 'package:new_wewo/app/modules/detail_order/controllers/detail_order_controller.dart';

class DetailOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailOrderController>(() => DetailOrderController());
  }
}
