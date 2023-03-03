import 'notification_item_model.dart';

class NotificationModel {
  final int id;
  final String type;
  final String imageUrl;
  final List<NotificationItem> notifications;


  NotificationModel({
    required this.id,
    required this.type,
    required this.imageUrl,
    required this.notifications
  });

  NotificationModel.fromJson(Map<String, dynamic> json)
      : this(
    id: json['_id'] ?? "",
    type: json['type'] ?? "",
    imageUrl: json['imageUrl'] ?? "",
    notifications: json['notifications'] ?? [],
  );

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "type": type,
      "imageUrl": imageUrl,
      "notifications": notifications,
    };
  }
}