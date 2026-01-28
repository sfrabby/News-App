import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http     ;
import 'package:news_app_with_getx/model/News%20Model.dart';

class NewsController extends GetxController{
  RxBool isLoading = false.obs;
  RxList <NewsModel> TrNews = <NewsModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<Map> ()async  {
    isLoading.value =true;
    var url = Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2025-12-28&sortBy=publishedAt&apiKey=56c0d5d277014ea5877ca61e1e131432");
    var response = await http.get(url);

    if(response.statusCode ==200){
      var body = jsonDecode(response.body);
      var articals = body["articles"];
      for( var news in articals){
        TrNews.add(NewsModel.fromJson(news));
      }
    }

    else{
      log("server Error");
      isLoading.value =false;
    }

  }


}