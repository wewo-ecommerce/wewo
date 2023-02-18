
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:new_wewo/app/modules/shopping_cart/controllers/shopping_cart_controller.dart';


class AddressView extends GetView<ShoppingCartController> {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Address',),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
