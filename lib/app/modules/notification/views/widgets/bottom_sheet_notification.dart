import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/modules/notification/controllers/notification_controller.dart';
import 'package:new_wewo/app/modules/widgets/bottom_sheet_widget.dart';

class BottomSheetNotification extends GetView<NotificationViewController> {
  const BottomSheetNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: '',
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.notifications.length,
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
              controller.notifications[index].type,
              style: AppTextStyle.bodyStyle,
            ),
          );
        },
      ),
    );
  }
}
