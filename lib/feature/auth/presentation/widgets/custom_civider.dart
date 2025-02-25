import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: AppColors.kTextFormFeildColor,
            height: 1.h,
            //  width: ,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text('or continue with',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: AppColors.kTextSecondary,
              )),
        ),
        Expanded(
          child: Container(
            color: AppColors.kTextFormFeildColor,
            height: 1.h,
          ),
        ),
      ],
    );
  }
}
