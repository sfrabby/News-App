import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_with_getx/Controller/bottomNavC.dart';
import 'package:news_app_with_getx/view/BottomBar/ui.dart';
import 'package:news_app_with_getx/view/Detail%20Page/Detail%20Page.dart';
import 'package:news_app_with_getx/view/Home%20page/Home%20page.dart';

void main() {
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
      home: BottomBar(),
    );
  }
}
