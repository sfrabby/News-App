import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_with_getx/Controller/bottomNavC.dart';
import 'package:news_app_with_getx/view/BottomBar/ui.dart';
import 'package:news_app_with_getx/view/Detail%20Page/Detail%20Page.dart';
import 'package:news_app_with_getx/view/Notification%20Screen/ui.dart';

final FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const AndroidInitializationSettings androidSettings = AndroidInitializationSettings("@mipmap/ic_launcher");

  const InitializationSettings initializationSettings = InitializationSettings(
      android: androidSettings
  );


  await notificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (details) {

    },
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      home: notificationScreen(),
    );
  }
}
