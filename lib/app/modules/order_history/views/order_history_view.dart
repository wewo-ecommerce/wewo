import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:new_wewo/app/common/theme/layyuu_theme/type.dart';
import 'package:new_wewo/app/modules/order_history/controllers/order_history_controller.dart';
import 'package:new_wewo/app/modules/order_history/views/widgets/order_history_item.dart';

import 'package:new_wewo/app/common/theme/layyuu_theme/color.dart' as color;

class OrderHistoryView extends GetView<OrderHistoryController> {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text('Order', style: appTextTheme.titleLarge!),
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: color.AppColors.neutralGrey,
          )),
      bottom: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle:
              appTextTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w700),
          unselectedLabelStyle: appTextTheme.bodyLarge,
          tabs: const <Widget>[
            Tab(
              child: Text('All orders'),
            ),
            Tab(
              child: Text('Delivering'),
            ),
            Tab(
              child: Text('Completed'),
            ),
            Tab(
              child: Text('Cancelled'),
            ),
          ]),
    );
  }

  Widget _buildBody() {
    return TabBarView(children: [
      Obx(() => controller.orders.isEmpty
          ? const Center(
              child: Icon(Icons.remove_shopping_cart_rounded),
            )
          : ListView.builder(
              itemCount: controller.orders.length,
              itemBuilder: (context, index) {
                final order = controller.orders[index];
                return OrderHistoryItem(
                    order: order,
                    total: controller.totalEachCart(controller.orders, index));
              },
            )),
      const Center(
        child: Text("WAITING"),
      ),
      const Center(
        child: Text("WAITING"),
      ),
      const Center(
        child: Text("WAITING"),
      ),
    ]);
  }
}
