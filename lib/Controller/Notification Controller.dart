import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class notificationC extends GetxController {
  final FlutterLocalNotificationsPlugin _localNoti = FlutterLocalNotificationsPlugin();

  // Notification Controller.dart
  Future<void> showNotification() async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      "fazle_channel_id",
      "Fazle Notification",
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails notiDetails = NotificationDetails(
      android: androidDetails,
    );

    await _localNoti.show(
      0,                // id
      "Samprotik somoy", // title
      "New News",        // body
      notiDetails,       // notificationDetails
    );
  }
}