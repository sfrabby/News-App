import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:news_app_with_getx/Controller/bottomNavC.dart';
import 'package:get/get.dart';
import '../../Utils/Widget/BottomNav.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BottomNav(),
      body: Obx(()=> controller.pages[controller.index.value]),
    );
  }
}
