import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_with_getx/model/News%20Model.dart';

class NewsController extends GetxController {
  RxBool isLoading = false.obs;

  // এখানে NewsModel এর বদলে Articles ব্যবহার করুন
  RxList<Articles> trNews = <Articles>[].obs;

  @override
  void onInit() {
    super.onInit();
    getNews();
  }

  Future<void> getNews() async {
    try {
      isLoading.value = true;
      trNews.clear();

      var url = Uri.parse(
        "https://newsapi.org/v2/everything?q=tesla&from=2025-12-28&sortBy=publishedAt&apiKey=56c0d5d277014ea5877ca61e1e131432",
      );

      var response = await http.get(url);

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);

        // পুরো রেসপন্সকে NewsModel এ কনভার্ট করা
        NewsModel res = NewsModel.fromJson(body);

        // যদি আর্টিক্যালস লিস্ট নাল না হয়, তবে সেটি আমাদের অবজারভেবল লিস্টে রাখা
        if (res.articles != null) {
          trNews.assignAll(res.articles!);
        }
      } else {
        log("Server Error: ${response.statusCode}");
      }
    } catch (e) {
      log("Exception: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
