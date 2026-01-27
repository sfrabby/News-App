import 'package:flutter/material.dart';

import '../../Config/AppColors.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MainColor,
        title: Text("Samprotik Somoy", style: TextStyle(color: White)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: MainColor,
          ),
          Center(
            child: CircleAvatar(radius: 100,
            backgroundColor: MainColor,),
          )
        ],
      ),
    );

  }
}
