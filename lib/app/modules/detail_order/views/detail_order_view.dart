import 'package:flutter/material.dart';

import 'package:new_wewo/app/common/util/exports.dart';

class DetailOrderView extends StatefulWidget {
  const DetailOrderView({super.key});

  @override
  State<DetailOrderView> createState() => _DetailOrderViewState();
}

class _DetailOrderViewState extends State<DetailOrderView> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Scaffold(
        body: _buildBody(context),
        bottomNavigationBar: _buildBottom(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Align(
            alignment: Alignment.center,
            child: Text(
              'Detail Order',
              style: AppTextStyle.semiBoldtypeText,
            ),
          );
        }
        return ExpansionTile(
          title: Text(
            'Order ${index + 1}',
            style: AppTextStyle.semiBoldtypeText,
          ),
          trailing: Text(
            '\$ ${100}',
            style: AppTextStyle.semiBoldtypeText,
          ),
          children: const [
            ListTile(
              title: Text('Amount'),
              trailing: Text('5'),
            ),
            ListTile(
              title: Text('Discount'),
              trailing: Text('5%'),
            )
          ],
        );
      },
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: AppTextStyle.semiBoldtypeText,
          ),
          const CircleAvatar(
            child: Text('9'),
          ),
          Text(
            '\$ 500',
            style: AppTextStyle.semiBoldtypeText.copyWith(fontSize: 24),
          )
        ],
      ),
    );
  }
}
