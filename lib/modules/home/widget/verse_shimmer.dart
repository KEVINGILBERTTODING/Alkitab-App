import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yesheis/styles/style_app.dart';

class VerseShimmer extends StatelessWidget {
  const VerseShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80.w,
              height: 23.h,
              decoration: BoxDecoration(
                color: StyleApp.grey,
                borderRadius: BorderRadius.circular(8.w),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 240.w,
              height: 18.h,
              decoration: BoxDecoration(
                color: StyleApp.grey,
                borderRadius: BorderRadius.circular(8.w),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 170.w,
              height: 18.h,
              decoration: BoxDecoration(
                color: StyleApp.grey,
                borderRadius: BorderRadius.circular(8.w),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              height: 18.h,
              decoration: BoxDecoration(
                color: StyleApp.grey,
                borderRadius: BorderRadius.circular(8.w),
              ),
            )
          ],
        ),
        baseColor: StyleApp.grey,
        highlightColor: StyleApp.white);
  }
}
