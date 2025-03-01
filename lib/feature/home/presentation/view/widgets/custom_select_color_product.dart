import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSelectColorProduct extends StatelessWidget {
  const CustomSelectColorProduct({
    super.key,
    this.onTap,
    this.shadows,
    this.color,
    this.side,
  });
  final void Function()? onTap;
  final List<BoxShadow>? shadows;
  final Color? color;
  final BorderSide? side;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 32.w,
        height: 32.h,
        decoration: ShapeDecoration(
          color: color,
          shape: OvalBorder(
            side: side ?? BorderSide.none,
          ),
          shadows: shadows,
        ),
      ),
    );
  }
}
