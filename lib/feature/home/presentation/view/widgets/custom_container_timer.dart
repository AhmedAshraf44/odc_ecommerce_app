import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerTimer extends StatelessWidget {
  const CustomContainerTimer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: ShapeDecoration(
        color: Color(0xFFF2F2F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF292A2E),
          fontSize: 12.sp,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w700,
          height: 1.50,
        ),
      ),
    );
  }
}
