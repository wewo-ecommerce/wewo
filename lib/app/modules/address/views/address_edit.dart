import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_wewo/app/modules/address/controllers/address_create_controller.dart';
import 'package:new_wewo/app/modules/address/controllers/address_edit_controller.dart';
import 'package:new_wewo/app/modules/address/views/widgets/address_form.dart';

class AddressEditScreen extends GetView<AddressEditController> {
  const AddressEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final indicatorHeight =  MediaQuery.of(context).viewPadding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit address"),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: indicatorHeight),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Edit Address"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AddressForm(),
        ),
      ),
    );
  }
}
