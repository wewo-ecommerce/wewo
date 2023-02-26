import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/data/models/order_model.dart';
import 'package:new_wewo/app/modules/detail_order/views/detail_order_view.dart';
import 'package:new_wewo/app/modules/order_history/views/widgets/detail_order.dart';

class OrderHistoryItem extends StatelessWidget {
  final Order order;
  const OrderHistoryItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        onTap: () async => await showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
          ),
          builder: (context) {
            return DetailOrderView();
          },
        ),
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
  }
}
