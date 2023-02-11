import 'package:get/get.dart';

import 'package:new_wewo/app/modules/shopping_cart/controllers/shopping_cart_controller.dart';

class ShoppingCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoppingCartController>(
      () => ShoppingCartController(),
    );
  }
}
