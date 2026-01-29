import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Config/AppColors.dart';

class BottomCard extends StatelessWidget {
  final String image;
  final String title;

  const BottomCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: SeconderyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          // ইমেজ কন্টেইনার
          Container(
            margin: const EdgeInsets.all(5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: MainColor,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover, // ইমেজটি সুন্দরভাবে বক্সে ফিট হবে
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis, // বড় টেক্সট হলে '...' দেখাবে
                    style: TextStyle(
                      color: White,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}