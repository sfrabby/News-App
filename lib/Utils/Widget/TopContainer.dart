import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Config/AppColors.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
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

                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey)],
                    color: MainColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tranding",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            "2 days ago",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "The error you're seeing, is a classic Flutter .",
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
                          Text("Fazle Rabby"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}