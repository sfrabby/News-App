import 'package:flutter/material.dart';
import 'package:news_app_with_getx/Config/AppColors.dart';
import 'package:news_app_with_getx/Controller/News%20Controller.dart';
import 'package:get/get.dart';
import '../../Utils/Widget/BottomCard.dart';
import '../../Utils/Widget/TopContainer.dart';
import '../../Utils/Widget/TopNews.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MainColor,
        title: Text("Samprotik Somoy", style: TextStyle(color: White)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hottest News", style: TextStyle(color: Colors.black)),
                Text("see all", style: TextStyle(color: Colors.black)),
              ],
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  News = newsController.
                  return TNewsCont(img: img, title: title, Author: Author);
                },
              ),
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("News for you", style: TextStyle(color: Colors.black)),
                Text("see all", style: TextStyle(color: Colors.black)),
              ],
            ),
            BottomCard(),
          ],
        ),
      ),
    );
  }
}
