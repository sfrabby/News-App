import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_getx/Controller/bottomNavC.dart';

import '../../Config/AppColors.dart';

class BottomNav extends StatelessWidget {

  BottomNav({super.key,});
  BottomNavController bottomNavController = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: 200,
        height: 50,

        margin: EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: MainColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                bottomNavController.index.value = 0;
              },
              child: Container(
                padding: EdgeInsets.all(5),
                //margin: EdgeInsets.all(10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: bottomNavController.index.value == 0
                      ? SeconderyColor
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.home, size: 30, color: White),
              ),
            ),
            InkWell(
              onTap: () {
                bottomNavController.index.value = 1;
              },
              child: Container(
                padding: EdgeInsets.all(5),
                //margin: EdgeInsets.all(10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: bottomNavController.index.value == 1
                      ? SeconderyColor
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.book, size: 30, color: White),
              ),
            ),
          ],
        ),
      );
    });
  }
}
