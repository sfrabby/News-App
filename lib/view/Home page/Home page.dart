import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../Config/AppColors.dart';
import '../../Controller/News Controller.dart';
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
        // ১. পুরো Column টি স্ক্রলযোগ্য করতে চাইলে SingleChildScrollView ব্যবহার করা যায়, 
        // তবে Expanded ব্যবহার করাই বুদ্ধিমানের কাজ।
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hottest News Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Hottest News", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("see all", style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 10),

            // ১. Hottest News Section (Horizontal)
            Obx(() {
              if (newsController.isLoading.value) {
                return const SizedBox(height: 250, child: Center(child: CircularProgressIndicator()));
              }
              // Horizontal ListView কে অবশ্যই SizedBox দিতে হবে, Expanded নয়।
              return SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: newsController.trNews.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var news = newsController.trNews[index];
                    return TNewsCont(
                      img: news.urlToImage ?? "https://via.placeholder.com/150",
                      title: news.title ?? "No Title",
                      Author: news.author ?? "Unknown", date: news.publishedAt.toString(),
                    );
                  },
                ),
              );
            }),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("News for you", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("see all", style: TextStyle(color: Colors.blue)),
              ],
            ),

            // ২. News for you Section (Vertical)
            // সমাধান: Column এর ভেতর Vertical ListView থাকলে তাকে Expanded দিয়ে ঘিরে দিতে হয়।
            Expanded(
              child: Obx(() {
                if (newsController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  shrinkWrap: true, // এটি লিস্টকে টাইট রাখতে সাহায্য করে
                  physics: const BouncingScrollPhysics(),
                  itemCount: newsController.trNews.length,
                  itemBuilder: (context, index) {
                    return BottomCard();
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