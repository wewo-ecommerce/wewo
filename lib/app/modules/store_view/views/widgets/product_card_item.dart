import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/data/models/product_model.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    Key? key,
    required this.product,
    required this.width,
    required this.height,
    required this.widthOfText,
    this.maxLine = 1,
  }) : super(key: key);

  final Product product;
  final double width;
  final double height;
  final double widthOfText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 0.0, height: 1.h),
          SizedBox(
            width: width,
            height: height,
            child: CachedNetworkImage(
              imageUrl: product.imageUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Placeholder(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(width: 0.0, height: 1.h),
          _buildBottomBarItem(),
        ],
      ),
    );
  }

  _buildBottomBarItem() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp),
      child: Column(
        children: [
          SizedBox(
            width: widthOfText,
            height: 5.h,
            child: Text(
              product.title,
              maxLines: maxLine,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.bodyStyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(width: 0.0, height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: AppTextStyle.bodyStyle.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 8.w),
              CircleAvatar(
                backgroundColor: AppColors.mainColor,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
