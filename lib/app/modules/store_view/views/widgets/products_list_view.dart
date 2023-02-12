import 'package:flutter/material.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/data/models/product_model.dart';

import 'package:new_wewo/app/modules/store_view/views/widgets/product_card_item.dart';

class ProductListView extends StatelessWidget {
  final List<Product> products;
  final bool isHorizontal;

  const ProductListView(
      {super.key, required this.products, this.isHorizontal = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCardItem(
            height: 32.w,
            width: 32.w,
            widthOfText: 32.w,
            maxLine: 2,
            product: products[index],
          );
        },
      ),
    );
  }
}
