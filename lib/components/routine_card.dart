import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoutineCard extends StatelessWidget {
  const RoutineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 160.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
        ],
      ),
    );
  }
}
