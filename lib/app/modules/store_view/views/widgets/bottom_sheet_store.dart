import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/modules/store_view/controllers/store_view_controller.dart';
import 'package:new_wewo/app/modules/widgets/bottom_sheet_widget.dart';

class BottomSheetStore extends GetView<StoreViewController> {
  const BottomSheetStore({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "",
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.stores.length,
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: const Divider(
              color: Colors.grey,
            ),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Text(
              controller.stores[index].type,
              style: AppTextStyle.bodyStyle,
            ),
          );
        },
      ),
    );
  }
}
