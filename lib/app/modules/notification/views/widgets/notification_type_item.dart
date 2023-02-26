import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/data/models/notification_model.dart';
import 'package:new_wewo/app/modules/notification/views/widgets/notification_item.dart';

import '../../../../data/models/notification_item_model.dart';
import 'bottom_sheet_notification.dart';

class NotificationTypeItem extends StatelessWidget {
  final List<NotificationItem> notifications;
  final double width;
  final double height;
  const NotificationTypeItem({
    Key? key,
    required this.notifications,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Notification'),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(Icons.arrow_back_outlined, size: 20.sp),
        ),
        /*actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
             *//* Get.bottomSheet(
                const BottomSheetNotification(),
                isScrollControlled: true,
              );*//*
            },
          ),
        ],*/
      ),
      body: SizedBox(
        //height: 32.h,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: notifications.length,
          itemBuilder: (BuildContext context, int index) {
            return NotificationItemWidget(
              height: 15.h,
              width: 375.w,
              notifications: notifications[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
    );
  }
}
