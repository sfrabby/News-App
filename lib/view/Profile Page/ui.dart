import 'package:flutter/material.dart';

import '../../Config/AppColors.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

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
                  color: Colors.grey),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.search, color: White,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MainColor,


                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
