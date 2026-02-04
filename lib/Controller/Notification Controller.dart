import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class notificationC extends GetxController {
  Future<void> showNotification() async {
    AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      "fazle",
      "This is notification",
      priority: Priority.max,
      importance: Importance.max,
    );
  }
}
