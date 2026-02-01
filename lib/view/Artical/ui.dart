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
  final TextEditingController searchC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // --- Search Bar Section ---
            Container(
              margin: const EdgeInsets.all(5),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300, // Background color fixed
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchC,
                      onChanged: (value) {
                        articalController.searchNews(value); // কল করা হলো
                      },
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText: "search here",
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MainColor,
                    ),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Obx(() {
                if (articalController.isLoading.value) {
                  return ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => const BottomCardShimmer(),
                  );
                }

                if (articalController.filteredNews.isEmpty) {
                  return  Center(child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: MainColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("No Product Found", style: TextStyle(color: White, fontSize: 25),),
                  ) );
                }

                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: articalController.filteredNews.length,
                  itemBuilder: (context, index) {
                    var article = articalController.filteredNews[index];

                    return InkWell(
                      onTap: () {
                        Get.to(() => DetailPage(news: article));
                      },
                      child: BottomCard(
                        image: article.urlToImage ?? "https://via.placeholder.com/150",
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