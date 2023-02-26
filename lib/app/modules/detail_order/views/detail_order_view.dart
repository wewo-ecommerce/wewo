import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/modules/detail_order/controllers/detail_order_controller.dart';

class DetailOrderView extends GetView<DetailOrderController> {
  const DetailOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      bottomNavigationBar: _buildBottom(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Detail Order',
        style: AppTextStyle.titleTextStyle.copyWith(color: Colors.white),
      ),
      centerTitle: true,
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            'Order ${index}',
            style: AppTextStyle.semiBoldtypeText,
          ),
          trailing: FractionallySizedBox(
            widthFactor: 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('2'),
                const Text('\$25'),
                Text(
                  '\$ ${100}',
                  style: AppTextStyle.semiBoldtypeText,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: AppTextStyle.semiBoldtypeText,
          ),
          const CircleAvatar(
            child: Text('10'),
          ),
          Text(
            '\$ 500',
            style: AppTextStyle.semiBoldtypeText.copyWith(fontSize: 24),
          )
        ],
      ),
    );
  }
}
