import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:news_app_with_getx/Config/Size%20Box.dart';

import '../../Config/AppColors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MainColor,
        title: Text("Samprotik Somoy", style: TextStyle(color: White)),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MainColor,
              ),
            ),
            SizedBox(height: spaceBtwItem),
            Text(
              "HTTP fetching at runtime, ideal for development. Can also be used in production to reduce app size",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            SizedBox(height: spaceBtwSection),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2 days ago", style: TextStyle(color: Colors.black)),
                Text("Nazmul Islam", style: TextStyle(color: Colors.black)),
              ],
            ),
            SizedBox(height: spaceBtwItem),
            Text(
              "HTTP fetching at runtime, ideal for development. Can also be used in production to reduce app size HTTP fetching at runtime, ideal for development. Can also be used in production to reduce app size HTTP fetching at runtime, ideal for development. Can also be used in production to reduce app size HTTP fetching at runtime, ideal for development. Can also be used in production to reduce app size",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
