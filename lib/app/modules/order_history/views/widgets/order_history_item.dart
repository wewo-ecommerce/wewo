import 'package:get/get.dart';
import 'package:new_wewo/app/common/theme/layyuu_theme/color.dart' as color;
import 'package:flutter/material.dart';

import 'package:new_wewo/app/common/theme/layyuu_theme/type.dart';

import 'package:new_wewo/app/data/models/order_model.dart';

import 'package:new_wewo/app/modules/detail_order/views/widget/dotted_divider.dart';
import 'package:new_wewo/app/routes/app_pages.dart';

class OrderHistoryItem extends StatelessWidget {
  final Order order;
  final double total;
  const OrderHistoryItem({super.key, required this.order, required this.total});

  @override
  Widget build(BuildContext context) {
    return _buildItem();
  }

  Widget _buildItem() {
    return Material(
      child: InkWell(
        onTap: () => Get.toNamed(Routes.DETAIL_ORDER),
        child: AnimatedContainer(
          duration: const Duration(microseconds: 500),
          decoration: BoxDecoration(
              border: Border.all(color: color.AppColors.neutralGrey),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  order.code,
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Order at Lafyuu : August 1,2017',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              CustomPaint(
                painter: DottedHorizontal(),
              ),
              ListTile(
                title: Text(
                  'Order Status',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  order.status,
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                title: Text(
                  'Items',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  '${order.items.length} Items purchased',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                title: Text(
                  'Price',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  '\$ $total',
                  style: appTextTheme.titleMedium!.copyWith(
                      color: color.AppColors.primary,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


///Just Example and use later
///Dont delete
/*
Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        onTap: () => Get.toNamed(Routes.DETAIL_ORDER),
        key: ValueKey(order),
        shape: const Border.symmetric(
            horizontal: BorderSide(width: 2, color: Color(0xffeeeeee))),
        title: Align(
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.storefront_rounded),
            label: Text(
              'Name store',
              style: AppTextStyle.semiBoldtypeText,
            ),
          ),
        ),
        subtitle: Row(
          children: [
            Hero(
              tag: order,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: CachedNetworkImage(
                    imageUrl: order.product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        order.product.title,
                        style: AppTextStyle.semiBoldtypeText
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        '\$${order.product.price}',
                        style: AppTextStyle.semiBoldtypeText
                            .copyWith(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 15,
                    ),
                    label: Text(
                      order.status,
                      style: AppTextStyle.normaltypeText
                          .copyWith(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(2),
                      backgroundColor: const Color(0xffeeeeee),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Saving',
                        style: AppTextStyle.semiBoldtypeText
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        '\$${order.product.price}',
                        style: AppTextStyle.normaltypeText
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

*/