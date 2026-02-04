import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_with_getx/Controller/bottomNavC.dart';
import 'package:news_app_with_getx/view/BottomBar/ui.dart';
import 'package:news_app_with_getx/view/Detail%20Page/Detail%20Page.dart';
import 'package:news_app_with_getx/view/Home%20page/Home%20page.dart';
import 'package:news_app_with_getx/view/Notification%20Screen/ui.dart';

FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  AndroidInitializationSettings androidSettings = AndroidInitializationSettings("@mipmap/ic_launcher");

  InitializationSettings initializationSettings = InitializationSettings(
    android: androidSettings
  );
 bool? initialized = await notificationsPlugin.initialize(settings: initializationSettings);
log("Notification $initialized");
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
