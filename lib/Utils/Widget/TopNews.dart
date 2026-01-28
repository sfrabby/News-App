import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Config/AppColors.dart';

class TNewsCont extends StatelessWidget {
  const TNewsCont({
    super.key,
    required this.img,
    required this.title,
    required this.Author,
  });

  final String img;
  final String title;
  final String Author;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SeconderyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(8),
      width: 180,

      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
            height: 110,
            child: Image.network(img),

            decoration: BoxDecoration(

              boxShadow: [BoxShadow(color: Colors.grey)],
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tranding",
                      style: TextStyle(color: Colors.black, fontSize: 13,),
                    ),
                    Text(
                      "2 days ago",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ],
                ),
                Text( title,
                  maxLines: 1,
                  style: TextStyle(
                    color: White,
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person),
                      backgroundColor: SeconderyColor,
                    ),
                    Text(Author),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}