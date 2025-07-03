import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkTitle extends StatelessWidget {
  const WorkTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 22.sp)),
        GestureDetector(
          onTap: () {},
          child: Text(
            "See All",
            style: TextStyle(
              color: Color.fromRGBO(255, 134, 5, 1),
              fontWeight: FontWeight.w800,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}
