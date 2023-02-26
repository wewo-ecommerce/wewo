import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/notification_model.dart';

import '../../../common/util/exports.dart';
import '../../../data/models/notification_item_model.dart';

class NotificationViewController extends GetxController {
  RxList<NotificationModel> notifications = <NotificationModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    notifications.addAll(
      [
        NotificationModel(
            id: 1,
            type: "Offer",
            imageUrl: Constants.offerNotification,
            notifications: <NotificationItem>[
              NotificationItem(
                  id: 1,
                  title: "The Best",
                  description:
                      "Is the best itemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm",
                  imageUrl: Constants.offerNotification,
                  createdAt: "25/02/2022"),
              NotificationItem(
                  id: 2,
                  title: "The Best 1",
                  description: "Is the best itemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm",
                  imageUrl: Constants.offerNotification,
                  createdAt: "25/02/2022"),
              NotificationItem(
                  id: 3,
                  title: "The Best 2",
                  description: "Is the best itemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm",
                  imageUrl: Constants.offerNotification,
                  createdAt: "25/02/2022")
            ]),
        NotificationModel(
            id: 2,
            type: "Feed",
            imageUrl: Constants.feed,
            notifications: <NotificationItem>[
              NotificationItem(
                  id: 1,
                  title: "The Feed 1",
                  description: "Is the best item",
                  imageUrl: Constants.feed,
                  createdAt: "25/02/2022"),
              NotificationItem(
                  id: 2,
                  title: "The Feed 2",
                  description: "Is the best item",
                  imageUrl: Constants.feed,
                  createdAt: "25/02/2022"),
              NotificationItem(
                  id: 3,
                  title: "The Feed 3",
                  description: "Is the best item",
                  imageUrl: Constants.feed,
                  createdAt: "25/02/2022")
            ]),
        NotificationModel(
            id: 3,
            type: "Activity",
            imageUrl: Constants.activity,
            notifications: <NotificationItem>[
              NotificationItem(
                  id: 1,
                  title: "The Activity 1",
                  description: "Is the best item",
                  imageUrl: Constants.activityNotification,
                  createdAt: "25/02/2022"),
              NotificationItem(
                  id: 2,
                  title: "The Activity 2",
                  description: "Is the best item",
                  imageUrl: Constants.activityNotification,
                  createdAt: "25/02/2022"),
              NotificationItem(
                  id: 3,
                  title: "The Activity 3",
                  description: "Is the best item",
                  imageUrl: Constants.activityNotification,
                  createdAt: "25/02/2022")
            ]),
      ],
    );
  }
}
