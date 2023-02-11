import 'package:flutter/material.dart';

class QuantityIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const QuantityIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(icon)),
      onPressed: onPressed,
      iconSize: 23,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
