import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/values/styles/app_text_style.dart';
import 'package:new_wewo/app/data/models/order_model.dart';
import 'package:new_wewo/app/data/models/product_model.dart';
import 'package:new_wewo/app/modules/order_history/controllers/order_history_controller.dart';
import 'package:new_wewo/app/modules/order_history/views/widgets/order_history_item.dart';
import 'package:new_wewo/app/modules/order_history/views/widgets/tab_bar_order.dart';

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
      centerTitle: true,
      title: Text(
        'Order History',
        style: AppTextStyle.titleTextStyle.copyWith(
          color: Colors.white,
        ),
      ),
      bottom: TabBar(
          isScrollable: true,
          // labelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: AppTextStyle.semiBoldtypeText,
          unselectedLabelStyle: AppTextStyle.normaltypeText,
          // indicator:
          //     CustomIndicatorDecoration(color: Colors.white.withOpacity(0.5)),
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
              //controller: controller,
              itemCount: controller.orders.length,
              itemBuilder: (context, index) {
                final order = controller.orders[index];
                return OrderHistoryItem(order: order);
              },
            )),
      Center(
        child: Text("WAITING"),
      ),
      Center(
        child: Text("WAITING"),
      ),
      Center(
        child: Text("WAITING"),
      ),
    ]);
  }
}
