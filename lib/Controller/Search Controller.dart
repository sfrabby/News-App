import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_with_getx/model/News%20Model.dart';

class ArticalController extends GetxController {
  RxBool isLoading = false.obs;

  RxList<Articles> SearchNews = <Articles>[].obs;


  @override
  void onInit() {
    super.onInit();
    searchController( search);
  }

  Future<void> searchController(String search) async {
    try {
      isLoading.value = true;
      SearchNews.clear();

      var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?q=$search&apiKey=56c0d5d277014ea5877ca61e1e131432",
      );

      var response = await http.get(url);

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);

        NewsModel res = NewsModel.fromJson(body);

        if (res.articles != null) {
          SearchNews.assignAll(res.articles as Iterable<Articles>);
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
