import '/core/app_export.dart';
import 'package:wewo/presentation/wishlist_filled_screen/models/wishlist_filled_model.dart';
import 'package:flutter/material.dart';

class WishlistFilledController extends GetxController {
  TextEditingController group7CopyController = TextEditingController();

  TextEditingController buttonsmobileController = TextEditingController();

  Rx<WishlistFilledModel> wishlistFilledModelObj = WishlistFilledModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group7CopyController.dispose();
    buttonsmobileController.dispose();
  }
}
