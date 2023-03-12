import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.total, required this.onPressed});
  final double total;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 221, 213, 213),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'shopping_cart_total'.tr,
                  style: AppTextStyle.largeBoldTextStyle,
                ),
                TextSpan(
                  text: '$total \$',
                  style: AppTextStyle.largeBoldTextStyle.copyWith(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'shopping_cart_order'.tr,
                style: AppTextStyle.bodyStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
