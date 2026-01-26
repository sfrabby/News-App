import 'package:get/get.dart';
import 'package:news_app_with_getx/view/Artical%20Page/ui.dart';
import 'package:news_app_with_getx/view/Home%20page/Home%20page.dart';
import 'package:news_app_with_getx/view/Profile%20Page/ui.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    HomePage(),
    ProfilePage(),
    ArticalPage()
  ];


}