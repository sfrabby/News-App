import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_with_getx/model/News%20Model.dart';

import '../../Config/AppColors.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          elevation: 8,
          margin: EdgeInsets.all(10),
          color: SeconderyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: MainColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "The error you're seeing, is a classic Flutter .",
                      style: TextStyle(
                        color: White,
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
