import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDotTimer extends StatelessWidget {
  const CustomDotTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ':',
      style: TextStyle(
        color: Color(0xFF292A2E),
        fontSize: 12.sp,
        fontFamily: 'Plus Jakarta Sans',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
