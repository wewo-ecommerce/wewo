import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_wewo/app/modules/shopping_cart/views/widgets/quantity_icon_button.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Function(int) onQuantityChanged;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        QuantityIconButton(
          icon: Icons.remove,
          onPressed: () {
            onQuantityChanged(max(1, quantity - 1));
            log(quantity - 1);
          },
        ),
        Text(
          quantity.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        QuantityIconButton(
          icon: Icons.add,
          onPressed: () {
            onQuantityChanged(quantity + 1);
            log(quantity + 1);
          },
        ),
      ],
    );
  }
}
