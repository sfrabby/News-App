import 'package:flutter/material.dart';
import 'package:news_app_with_getx/Config/AppColors.dart';
import 'package:news_app_with_getx/Controller/News%20Controller.dart';
import 'package:get/get.dart';
import '../../Utils/Widget/BottomCard.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Hottest News", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                Text("see all", style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 10),

            // ১. Hottest News Section (Horizontal)
            Obx(() {
              if (newsController.isLoading.value) {
                return const SizedBox(height: 250, child: Center(child: CircularProgressIndicator()));
              }
              return SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: newsController.trNews.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var news = newsController.trNews[index];
                    return TNewsCont(
                      img: news.urlToImage ?? "https://via.placeholder.com/150",
                      title: news.title ?? "No Title",
                      Author: news.author ?? "Unknown",
                    );
                  },
                ),
              );
            }),

            const SizedBox(height: 20),

            // ২. News for you Section (Vertical)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("News for you", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                Text("see all", style: TextStyle(color: Colors.blue)),
              ],
            ),

            // BottomCard যদি একটি লিস্ট হয় তবে অবশ্যই Expanded ব্যবহার করতে হবে
            Expanded(
              child: Obx(() {
                if (newsController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: newsController.trNews.length,
                  itemBuilder: (context, index) {
                    return BottomCard(
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}