import 'package:get/get.dart';
import 'package:new_wewo/app/modules/detail_order/bindings/detail_order_bindings.dart';
import 'package:new_wewo/app/modules/detail_order/views/detail_order_view.dart';
import 'package:new_wewo/app/modules/order_history/bindings/order_history_binding.dart';
import 'package:new_wewo/app/modules/order_history/views/order_history_view.dart';
import 'package:new_wewo/app/modules/shopping_cart/bindings/shopping_cart_binding.dart';
import 'package:new_wewo/app/modules/shopping_cart/views/shopping_cart_view.dart';
import 'package:new_wewo/app/modules/store_view/bindings/store_view_binding.dart';
import 'package:new_wewo/app/modules/store_view/views/store_view.dart';

import '../modules/address/bindings/address_binding.dart';
import '../modules/address/views/address_create.dart';
import '../modules/address/views/address_edit.dart';
import '../modules/address/views/address_list.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/theme_example.dart';
import 'app_parameters.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/theme';

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
      name: _Paths.ORDER_HISTORY,
      page: () => const OrderHistoryView(),
      binding: OrderHistoryBinding(),
    ),
    GetPage(
        name: _Paths.DETAIL_ORDER,
        page: () => const DetailOrderView(),
        binding: DetailOrderBinding()),
  GetPage(
      name: _Paths.ADDRESS,
      page: () => const AddressListScreen(),
      binding: AddressBinding(),
      children: [
        GetPage(
            name: _Paths.CREATE,
            page: () => const AddressCreateScreen(),
        ),
        GetPage(
            name: _Paths.ADDRESS_EDIT,
            page: () => const AddressEditScreen(),
        ),
      ]
    ),
    GetPage(name: '/theme', page: () => const TestThemePage()),
  ];
}
