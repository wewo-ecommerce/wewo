import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';

import 'package:new_wewo/app/data/models/product_model.dart';

import 'package:new_wewo/app/modules/shopping_cart/controllers/shopping_cart_controller.dart';
import 'package:new_wewo/app/modules/shopping_cart/views/widgets/order_card.dart';

import 'package:new_wewo/app/modules/shopping_cart/views/widgets/shoping_cart_item.dart';
import 'package:new_wewo/app/routes/app_pages.dart';

class ShoppingCartView extends GetView<ShoppingCartController> {
  const ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Align(
          heightFactor: 1,
          widthFactor: 1,
          child: GestureDetector(
            onTap: () {},
            child: CachedNetworkImage(
                width: 28.sp,
                imageUrl:
                    'https://png.pngtree.com/png-clipart/20210613/original/pngtree-dark-gray-simple-avatar-png-image_6404677.jpg',
                imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: imageProvider),
                      ),
                    ),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.account_circle_rounded)),
          ),
        ),
        title: Text(
          'Giỏ hàng',
          style: AppTextStyle.titleTextStyle.copyWith(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              size: 20.sp,
            ),
            onPressed: () {
              Get.offAllNamed(Routes.HOME);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.storefront_outlined,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Obx(
            () => controller.products.isEmpty
                ? const SizedBox()
                : OrderCard(
                    total: controller.total.value,
                    onPressed: () {},
                  ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Obx(
            () => controller.products.isEmpty
                ? Center(
                    child: Text(
                      'Giỏ hàng trống',
                      style: AppTextStyle.mediumTextStyle,
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      controller: controller.scrollController,
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        final product = controller.products[index];
                        return ShoppingCartItem(
                          product: product,
                          onQuantityChanged: (quantity) {
                            controller.updateQuantity(product, quantity);
                            log(quantity);
                          },
                          onDismissed: (p0) {
                            controller.removeProduct(product);
                          },
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
