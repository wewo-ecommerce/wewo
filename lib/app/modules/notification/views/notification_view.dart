import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/modules/notification/views/widgets/notification_type.dart';
import 'package:new_wewo/app/modules/notification/views/widgets/notification_type_item.dart';
import '../../store_view/views/widgets/bottom_sheet_store.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationViewController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 228, 227, 223),
      backgroundColor: Color.fromARGB(255, 228, 227, 223),
      appBar: AppBar(
        title: const Text('Notification'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Get.bottomSheet(
                const BottomSheetStore(),
                isScrollControlled: true,
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: controller.notifications.length,
          //shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.to(
                      NotificationTypeItem(
                        notifications: controller.notifications[index].notifications,
                        width: 375.w,
                        height: 160.h,
                      ),
                    );
                  },
                  child: NotificationType(
                    title: controller.notifications[index].type,
                    imageUrl: controller.notifications[index].imageUrl,
                  ),
                )
              ],
            );
          }),
    );
  }
}
