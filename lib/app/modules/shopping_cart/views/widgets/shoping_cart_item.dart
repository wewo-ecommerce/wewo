import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/data/models/product_model.dart';
import 'package:new_wewo/app/modules/shopping_cart/views/widgets/quantity_selector.dart';

class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem(
      {super.key,
      required this.product,
      required this.onQuantityChanged,
      required this.onDismissed});
  final Product product;
  final Function(int) onQuantityChanged;
  final Function(DismissDirection) onDismissed;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: const Icon(
        Icons.delete_forever,
        size: 40,
      ),
      onDismissed: onDismissed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 221, 213, 213),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Hero(
              tag: product,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: CachedNetworkImage(
                    imageUrl: product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.title,
                    style: AppTextStyle.mediumTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    product.description,
                    style: AppTextStyle.mediumTextStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      QuantitySelector(
                        quantity: product.quantity,
                        onQuantityChanged: onQuantityChanged,
                      ),
                      const Spacer(),
                      Text(
                        '\$${product.price}',
                        style: AppTextStyle.largeBoldTextStyle
                            .copyWith(color: Colors.red),
                      ),
                      const SizedBox(
                        width: 10,
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
