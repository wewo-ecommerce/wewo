import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressFieldWithLabel extends StatelessWidget {
  final Widget child;
  final String? labelText;
  final EdgeInsets? padding;

  const AddressFieldWithLabel({Key? key, required this.child, this.labelText,this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (labelText != null && labelText!.isNotEmpty) ...[
            Text(labelText!, style: context.textTheme.labelLarge),
            const SizedBox(height: 12)
          ],
          child,
        ],
      ),
    );
  }
}
