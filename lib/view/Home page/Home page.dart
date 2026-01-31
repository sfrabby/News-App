import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../Config/AppColors.dart';
import '../../Controller/Bottom Controller.dart';
import '../../Controller/News Controller.dart';
import '../../Utils/Shimmer/Bottom Card shimmer.dart';
import '../../Utils/Shimmer/Top News.dart';
import '../../Utils/Widget/BottomCard.dart';
import '../../Utils/Widget/TopNews.dart';
import '../Detail Page/Detail Page.dart';
import '../For you see all/ui.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final NewsController newsController = Get.put(NewsController());
  final BottomController bottomController = Get.put(BottomController());

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
            // Hottest News Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Hottest News",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("see all", style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 10),

            // ১. Hottest News Section (Horizontal)
            Obx(() {
              if (newsController.isLoading.value) {
                return SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const TNewsShimmer();
                    },
                  ),
                );
              }

              return SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: newsController.trNews.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var news = newsController.trNews[index];
                    return InkWell(
                      onTap: () {
                        Get.to(() => DetailPage(news: news));
                      },
                      child: TNewsCont(
                        img:
                            news.urlToImage ??
                            "https://via.placeholder.com/150",
                        title: news.title ?? "No Title",
                        Author: news.author ?? "Unknown Author",
                        date: news.publishedAt.toString(),
                      ),
                    );
                  },
                ),
              );
            }),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "News for you",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>nforyou());
                  },
                    child: const Text("see all", style: TextStyle(color: Colors.blue))),
              ],
            ),

            Expanded(
              child: Obx(() {

                if (newsController.isLoading.value ||
                    bottomController.isLoading.value) {
                  return ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) => const BottomCardShimmer(),
                  );
                }

                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    var bottomNews = bottomController.BottomNews[index];
                    return InkWell(
                      onTap: () {
                        Get.to(() => DetailPage(news: bottomNews));
                      },
                      child: BottomCard(
                        image:
                            bottomNews.urlToImage ??
                            Icon(Icons.broken_image).toString(),
                        title: bottomNews.title ?? "No Title Available",
                      ),
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
