import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/address_model.dart';
import 'package:new_wewo/app/routes/app_pages.dart';

class AddressCard extends StatefulWidget {
  final AddressModel address;

  const AddressCard({
    super.key,
    required this.address,
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
      onTapCancel: () => setCardClick.call(false),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 500),
        decoration: BoxDecoration(
            border: Border.all(
                color: isCardClick
                    ? context.theme.primaryColor
                    : context.theme.dividerColor,
            ),
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
                  onPressed: () => Get.toNamed(Routes.ADDRESS_EDIT("0")),
                  child: const Text('Edit'),
                ),
                const SizedBox(width: 15),
                IconButton(
                    onPressed: _showDeleteDialog,
                    icon: const Icon(Icons.delete_outline_outlined))
              ],
            )
          ],
        ),
      ),
    );
  }
  void _showDeleteDialog(){
      showGeneralDialog(
        context: context,
        barrierColor: context.theme.colorScheme.surface,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) =>
            Dialog(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                insetPadding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment:
                  CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      child: Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          color: context
                              .theme.colorScheme.errorContainer,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '!',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                            color: context.theme.colorScheme
                                .onErrorContainer,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text('Confirmation',
                        style: context.textTheme.headlineSmall
                            ?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 8),
                    Text('Are you sure wanna delete address',
                        textAlign: TextAlign.center),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('Delete')),
                    OutlinedButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Cancel')),
                  ],
                )),
      );
    }
}
