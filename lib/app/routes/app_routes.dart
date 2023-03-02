part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();
  static const INIT = _Paths.START;
  static const HOME = _Paths.HOME;
  static const SHOPPING_CART = _Paths.SHOPPING_CART;
  static const STORE_VIEW = _Paths.STORE_VIEW;
  static const NOTIFICATION = _Paths.NOTIFICATION;
  static const ADDRESS = _Paths.ADDRESS;
  //Address
  static const ADDRESS_CREATE = "$ADDRESS${_Paths.CREATE}";
  static String ADDRESS_EDIT(String addressID) => "$ADDRESS${_Paths.EDIT}/${Parameters.addressID}";
}

abstract class _Paths {
  _Paths._();
  //Common paths
  static const EDIT = "/edit";
  static const CREATE = "/create";
  static const DETAIL = "/detail";

  static const START = "/";
  //HOME
  static const HOME = '/home';
  static const SHOPPING_CART = '/shopping_cart';
  static const STORE_VIEW = '/store_view';
  static const NOTIFICATION = '/notification';
  //Address
  static const ADDRESS = '/address';
  static const ADDRESS_EDIT = '/:${Parameters.addressID}';
}
