import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final double? width;
  final double? height;
  const MainButton({
    super.key,
    required this.onTap,
    required this.title,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 235.w,
        height: height ?? 38.h,
        decoration: BoxDecoration(
          color: Color(0xff999999),
          borderRadius: BorderRadius.circular(2.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: width == null ? 44.w : (width! / 4.5.w),
              height: height == null ? 36.h : (height! - 2.h),
              margin: EdgeInsets.symmetric(horizontal: 2.w),
              color: Colors.white,
              child: Center(
                child: Image.asset(
                  'assets/icons/arrow_forward.png',
                  width: 10.w,
                  height: 10.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
