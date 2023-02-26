import 'package:get/get.dart';
import 'package:new_wewo/app/modules/address/bindings/address_binding.dart';
import 'package:new_wewo/app/modules/address/views/address_create.dart';
import 'package:new_wewo/app/modules/address/views/address_edit.dart';
import 'package:new_wewo/app/modules/address/views/address_list.dart';
import 'package:new_wewo/app/modules/auth/bindings/auth_binding.dart';
import 'package:new_wewo/app/modules/auth/bindings/otp_binding.dart';
import 'package:new_wewo/app/modules/auth/bindings/register_binding.dart';
import 'package:new_wewo/app/modules/auth/views/login_view.dart';
import 'package:new_wewo/app/modules/auth/views/otp_view.dart';
import 'package:new_wewo/app/modules/auth/views/register_view.dart';
import 'package:new_wewo/app/modules/shopping_cart/bindings/shopping_cart_binding.dart';
import 'package:new_wewo/app/modules/shopping_cart/views/shopping_cart_view.dart';
import 'package:new_wewo/app/modules/store_view/bindings/store_view_binding.dart';
import 'package:new_wewo/app/modules/store_view/views/store_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import 'app_parameters.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

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
        ]),
    GetPage(
        name: _Paths.LOGIN,
        page: () => const LoginView(),
        binding: AuthBinding(),
        children: [
          GetPage(
            name: _Paths.REGISTER,
            page: () => const RegisterView(),
            binding: RegisterBinding(),
          ),
          GetPage(
            name: _Paths.OTP,
            page: () => const OtpView(),
            binding: OtpBinding(),
          ),
        ]),
  ];
}
