import 'package:flutter/material.dart';
import 'package:news_app_with_getx/Config/AppColors.dart';

import '../../Utils/Widget/BottomCard.dart';
import '../../Utils/Widget/TopContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hottest News", style: TextStyle(color: Colors.black)),
                Text("see all", style: TextStyle(color: Colors.black)),
              ],
            ),

            TopContainer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("News for you", style: TextStyle(color: Colors.black)),
                Text("see all", style: TextStyle(color: Colors.black)),
              ],
            ),
            BottomCard(),
          ],
        ),
      ),
    );
  }
}
