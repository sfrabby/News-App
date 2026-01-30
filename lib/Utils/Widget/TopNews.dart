import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Config/AppColors.dart';

class TNewsCont extends StatelessWidget {
  const TNewsCont({
    super.key,
    required this.img,
    required this.title,
    required this.Author,
    required this.date,
  });

  final String img;
  final String title;
  final String Author;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SeconderyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(8),
      width: 170,

      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
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
                    Flexible(
                      child: Text(
                        "Tranding",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        date,
                        maxLines: 1,
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ),
                  ],
                ),

                Text(
                  title,
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
                      radius: 15,
                      child: Icon(Icons.person, color: White,),
                      backgroundColor: MainColor,
                    ),
                    Expanded(
                      child: Text(
                        Author,
                        maxLines: 1,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
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
