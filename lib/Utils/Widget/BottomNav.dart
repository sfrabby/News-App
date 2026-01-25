import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Config/AppColors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,

      margin: EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: SeconderyColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            //margin: EdgeInsets.all(10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: MainColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(Icons.home, size: 30, color: White),
          ),
          Container(
            padding: EdgeInsets.all(5),
            //margin: EdgeInsets.all(10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: MainColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(Icons.person, size: 30, color: White),
          ),
          Container(
            padding: EdgeInsets.all(5),
            //margin: EdgeInsets.all(10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: MainColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(Icons.settings, size: 30, color: White),
          ),
        ],
      ),
    );
  }
}