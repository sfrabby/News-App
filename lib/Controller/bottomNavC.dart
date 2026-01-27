import 'package:get/get.dart';
import 'package:news_app_with_getx/view/Home%20page/Home%20page.dart';

import '../view/Artical/ui.dart';
import '../view/Profile/ui.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    HomePage(),
    ProfilePage(),
    ArticalPage()
  ];


}