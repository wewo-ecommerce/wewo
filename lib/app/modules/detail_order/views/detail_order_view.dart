import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:new_wewo/app/common/theme/layyuu_theme/type.dart';

import 'package:new_wewo/app/common/theme/layyuu_theme/color.dart' as color;
import 'package:new_wewo/app/data/models/order_model.dart';
import 'package:new_wewo/app/modules/detail_order/controllers/detail_order_controller.dart';
import 'package:new_wewo/app/modules/detail_order/views/widget/dotted_divider.dart';

class DetailOrderView extends GetView<DetailOrderController> {
  const DetailOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      bottomNavigationBar: _buildBottom(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Order Detail', style: appTextTheme.titleLarge!),
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: color.AppColors.neutralGrey,
          )),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          _buildListProduct(context),
          _buildTimeline(context),
          _buildShippingDetail(context),
          _buildPaymentDetail(context)
        ],
      ),
    );
  }

  Widget _buildListProduct(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product', style: appTextTheme.headlineLarge!),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return AnimatedContainer(
                duration: const Duration(microseconds: 500),
                decoration: BoxDecoration(
                    border: Border.all(color: color.AppColors.neutralGrey),
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    const SizedBox.square(
                      dimension: 50,
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Product name $index',
                        ),
                        subtitle: Text(
                          '\$1000',
                          style: appTextTheme.displaySmall!
                              .copyWith(color: Colors.blueAccent),
                        ),
                        trailing: IconButton(
                            onPressed: null, icon: Icon(Icons.link_outlined)),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTimeline(BuildContext context) {
    ///TODO: [Timeline]
    return const SizedBox();
  }

  Widget _buildShippingDetail(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      children: [
        Text('Shipping Details', style: appTextTheme.headlineLarge),
        const SizedBox(
          height: 10,
        ),
        AnimatedContainer(
          duration: const Duration(microseconds: 500),
          decoration: BoxDecoration(
              border: Border.all(color: color.AppColors.neutralGrey),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Date Shipping',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  'Time',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                title: Text(
                  'Shipping',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  'POS Regular',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                title: Text(
                  'No.Resi',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  'T000192848573',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                title: Text(
                  'Address',
                  style: appTextTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                trailing: FractionallySizedBox(
                  widthFactor: 0.6,
                  child: Text(
                    '2727 LAakeshore Rd undefined Nampa,Tennessee 78410',
                    overflow: TextOverflow.fade,
                    style: appTextTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentDetail(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Text('Payment Details', style: appTextTheme.headlineLarge),
          const SizedBox(
            height: 10,
          ),
          AnimatedContainer(
            duration: const Duration(microseconds: 500),
            decoration: BoxDecoration(
                border: Border.all(color: color.AppColors.neutralGrey),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Item(3)',
                    style: appTextTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  trailing: Text(
                    '\$598.86',
                    style: appTextTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Shipping',
                    style: appTextTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  trailing: Text(
                    '\$40.00',
                    style: appTextTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  title: Text('Import charges',
                      style: appTextTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.w400)),
                  trailing: Text(
                    '\$128.00',
                    style: appTextTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                CustomPaint(
                  painter: DottedHorizontal(),
                ),
                ListTile(
                  title: Text(
                    'Total Price',
                    style: appTextTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  trailing: Text(
                    '\$766.86',
                    style: appTextTheme.titleMedium!.copyWith(
                        color: color.AppColors.primary,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildBody(BuildContext context) {
  //   return ListView.builder(
  //     padding: const EdgeInsets.symmetric(vertical: 10),
  //     shrinkWrap: true,
  //     itemCount: 5,
  //     itemBuilder: (context, index) {
  //       return ListTile(
  //         title: Text(
  //           'Order ${index}',
  //           style: AppTextStyle.semiBoldtypeText,
  //         ),
  //         trailing: FractionallySizedBox(
  //           widthFactor: 0.5,
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               const Text('2'),
  //               const Text('\$25'),
  //               Text(
  //                 '\$ ${100}',
  //                 style: AppTextStyle.semiBoldtypeText,
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget _buildBottom(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Notify Me"),
        ),
      ),
    );
  }

  // Widget _buildBottomm(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(
  //           'Total',
  //           style: AppTextStyle.semiBoldtypeText,
  //         ),
  //         const CircleAvatar(
  //           child: Text('10'),
  //         ),
  //         Text(
  //           '\$ 500',
  //           style: AppTextStyle.semiBoldtypeText.copyWith(fontSize: 24),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
