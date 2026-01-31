import 'package:flutter/material.dart';
import 'package:news_app_with_getx/Controller/Artical%20Page%20Controller.dart';
import 'package:news_app_with_getx/Utils/Widget/BottomCard.dart';
import 'package:get/get.dart';
import '../../Config/AppColors.dart';
import '../../Utils/Shimmer/Bottom Card shimmer.dart';
import '../Detail Page/Detail Page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ArticalController articalController = Get.put(ArticalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black,

                      decoration: InputDecoration(
                        hintText: "search here",
                        hintStyle: TextStyle(color: White),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.search, color: White),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MainColor,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Obx(() {
                // ১. সঠিক কন্ডিশন চেক (isLoading.value)
                if (ArticalController.isLoading.value) {
                  return ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => const BottomCardShimmer(),
                  );
                }

                if (ArticalController.ArticalNews.isEmpty) {
                  return const Center(child: Text("No News Found"));
                }

                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: ArticalController.ArticalNews.length,
                  itemBuilder: (context, index) {
                    var article = ArticalController.ArticalNews[index];

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
            ),
          ],
        ),
      ),
    );
  }
}
