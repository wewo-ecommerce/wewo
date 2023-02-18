import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/modules/address/controllers/address_controller.dart';
import 'package:new_wewo/app/modules/address/views/widgets/address_card.dart';


class AddressView extends GetView<AddressController> {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddressController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Address',
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return AddressCard(address:controller.addressList[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemCount: controller.addressList.length,
      ),
    );
  }
}


