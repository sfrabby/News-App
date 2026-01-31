import 'package:flutter/material.dart';
import 'package:news_app_with_getx/Controller/Artical%20Page%20Controller.dart';
import 'package:get/get.dart';

import '../../Controller/Bottom Controller.dart';
import '../../Utils/Shimmer/Bottom Card shimmer.dart';
import '../../Utils/Widget/BottomCard.dart';
import '../Detail Page/Detail Page.dart';

class nforyou extends StatelessWidget {
   nforyou({super.key});
  final BottomController bottomController = Get.put(BottomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child:  Expanded(
        child: Obx(() {
          if (bottomController.isLoading.value) {
            return ListView.builder(
              itemCount: bottomController.BottomNews.length,
              itemBuilder: (context, index) => const BottomCardShimmer(),
            );
          }

          if (bottomController.BottomNews.isEmpty) {
            return const Center(child: Text("No News Found"));
          }

          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: bottomController.BottomNews.length,
            itemBuilder: (context, index) {
              var article = bottomController.BottomNews[index];

              return InkWell(
                onTap: () {
                  Get.to(() => DetailPage(news: article));
                },
                child: BottomCard(
                  image:
                  article.urlToImage ??
                      "https://via.placeholder.com/150",
                  title: article.title ?? "No Title Available",
                ),
              );
            },
          );
        }),
      ),),
    );
  }
}
