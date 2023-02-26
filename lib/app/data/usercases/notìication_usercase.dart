import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_wewo/app/data/models/notification_model.dart';
import 'package:new_wewo/app/data/models/store_model.dart';

class NotificationUserCase {
  Future<List<NotificationModel>> fetchAllNotification() async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'wewo-store.vercel.app',
      path: '/api/seller/get-store-by-sellerid',
      queryParameters: {
        'seller_id': '63ae60fc7a68919cfbb7f747',
      },
    );
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return getNotification(response.body);
    } else {
      // throw Exception('Failed to load album');
      return [];
    }
  }

  List<NotificationModel> getNotification(String body) {
    final List<NotificationModel> notifications = [];
    final List<dynamic> data = jsonDecode(body)['data'];
    for (var element in data) {
      notifications.add(NotificationModel.fromJson(element));
    }
    return notifications;
  }
}
