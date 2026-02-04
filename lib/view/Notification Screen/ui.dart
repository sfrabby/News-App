import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news_app_with_getx/Config/AppColors.dart';
import 'package:get/get.dart';

import '../../Controller/Notification Controller.dart';

class notificationScreen extends StatelessWidget {
   notificationScreen({super.key});
  final notificationC notification = Get.put(notificationC());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MainColor,),
      body: FloatingActionButton(onPressed: (){
        notification.showNotification();
        log("Button Tapped");
      }, child: Icon(Icons.notification_add),),
    );
  }
}
