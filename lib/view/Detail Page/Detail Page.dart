import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:news_app_with_getx/Config/Size%20Box.dart';
import 'package:news_app_with_getx/model/News%20Model.dart';

import '../../Config/AppColors.dart';
import '../../Utils/Widget/BottomNav.dart';

class DetailPage extends StatelessWidget {

  final Articles news;
  const DetailPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MainColor,
        title: Text("Samprotik Somoy", style: TextStyle(color: White)),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back, color: White,),)
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(news.urlToImage ?? Icon(Icons.broken_image).toString()),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20),
                color: MainColor,
              ),
            ),
            SizedBox(height: spaceBtwItem),
            Text(news.title ?? "Unknown",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            SizedBox(height: spaceBtwSection),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2 days ago", style: TextStyle(color: Colors.black)),
                Text(news.author ?? "Unknown", style: TextStyle(color: Colors.black)),
              ],
            ),
            SizedBox(height: spaceBtwItem),
            Text(
              news.description!,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}


