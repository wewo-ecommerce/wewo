import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/modules/address/controllers/address_list_controller.dart';
import 'package:new_wewo/app/modules/address/views/widgets/address_card.dart';
import 'package:new_wewo/app/routes/app_pages.dart';

class AddressListScreen extends GetView<AddressListController> {
  const AddressListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddressListController());
    final indicatorHeight =  MediaQuery.of(context).viewPadding.bottom;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Address',
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: indicatorHeight),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => Get.toNamed(Routes.ADDRESS_CREATE),
          child: Text("Add Address"),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return AddressCard(address: controller.addressList[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemCount: controller.addressList.length,
      ),
    );
  }
}
