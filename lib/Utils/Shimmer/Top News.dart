import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TNewsShimmer extends StatelessWidget {
  const TNewsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ইমেজের জায়গার জন্য স্কেলিটন
            Container(
              margin: const EdgeInsets.all(5),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // তারিখ এবং ক্যাটাগরির জন্য
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 50, height: 10, color: Colors.black),
                      Container(width: 40, height: 10, color: Colors.black),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // টাইটেলের জন্য
                  Container(width: double.infinity, height: 15, color: Colors.black),
                  const SizedBox(height: 10),
                  // অথরের জন্য
                  Row(
                    children: [
                      const CircleAvatar(radius: 15),
                      const SizedBox(width: 5),
                      Container(width: 60, height: 10, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}