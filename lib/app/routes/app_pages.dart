import 'package:get/get.dart';
import 'package:new_wewo/app/modules/address/bindings/address_binding.dart';
import 'package:new_wewo/app/modules/address/views/address_view.dart';
import 'package:new_wewo/app/modules/shopping_cart/bindings/shopping_cart_binding.dart';
import 'package:new_wewo/app/modules/shopping_cart/views/shopping_cart_view.dart';
import 'package:new_wewo/app/modules/store_view/bindings/store_view_binding.dart';
import 'package:new_wewo/app/modules/store_view/views/store_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SHOPPING_CART;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPING_CART,
      page: () => const ShoppingCartView(),
      binding: ShoppingCartBinding(),
    ),
    GetPage(
      name: _Paths.STORE_VIEW,
      page: () => const StoreView(),
      binding: StoreViewBinding(),
    ),
    GetPage(
      name: _Paths.ADDRESS,
      page: () => const AddressView(),
      binding: AddressBinding(),
    )
  ];
}
