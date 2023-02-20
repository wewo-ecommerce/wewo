part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const SHOPPING_CART = _Paths.SHOPPING_CART;
  static const STORE_VIEW = _Paths.STORE_VIEW;
  static const ADDRESS = _Paths.ADDRESS;
  //Address
  static const ADDRESS_CREATE = ADDRESS + _Paths.ADDRESS_CREATE;
  static String ADDRESS_EDIT(String addressID) => "$ADDRESS/${Parameters.addressID}";
}

abstract class _Paths {
  _Paths._();
  //Common paths
  static const HOME = '/home';
  static const SHOPPING_CART = '/shopping_cart';
  static const STORE_VIEW = '/store_view';
  //Address
  static const ADDRESS = '/address';
  static const ADDRESS_CREATE = '/create';
  static const ADDRESS_EDIT = '/edit/:${Parameters.addressID}';
}
