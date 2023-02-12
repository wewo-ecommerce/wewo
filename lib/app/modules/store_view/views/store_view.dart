import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/modules/store_view/controllers/store_view_controller.dart';
import 'package:new_wewo/app/modules/store_view/views/widgets/bottom_sheet_store.dart';
import 'package:new_wewo/app/modules/store_view/views/widgets/category_title.dart';
import 'package:new_wewo/app/modules/store_view/views/widgets/productS_list_view.dart';

class StoreView extends GetView<StoreViewController> {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 227, 223),
      appBar: AppBar(
        title: const Text('StoreView'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Get.bottomSheet(
                const BottomSheetStore(),
                isScrollControlled: true,
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: controller.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              SizedBox(height: 2.h),
              CategoryTitle(title: controller.categories[index].title),
              const SizedBox(
                height: 10,
              ),
              ProductListView(products: controller.categories[index].products),
            ],
          );
        },
      ),
    );
  }
}
