import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/address_model.dart';

class AddressCard extends StatefulWidget {
  final AddressModel address;

  const AddressCard({
    super.key,
    required this. address,
  });

  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  bool isCardClick = false;

  void setCardClick(bool value) {
    setState(() {
      isCardClick = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      onTapDown: (_) => setCardClick.call(true),
      onTapUp: (_) => setCardClick.call(false),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 500),
        decoration: BoxDecoration(
            border: Border.all(
                color: isCardClick
                    ? context.theme.primaryColor
                    : context.theme.dividerColor),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.address.name,
              style: context.textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Text(
              widget.address.address,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: context.textTheme.bodyMedium?.copyWith(height: 1.8),
            ),
            const SizedBox(height: 16),
            Text(widget.address.phone),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Edit'),
                ),
                const SizedBox(width: 15),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_outline_outlined))
              ],
            )
          ],
        ),
      ),
    );
  }
}
