import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';

class CustomRowHaveAcountText extends StatelessWidget {
  const CustomRowHaveAcountText({
    super.key,
    required this.text,
    required this.textButton,
    this.onPressed,
  });
  final String text;
  final String textButton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: AppColors.kTextSecondary,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style: TextStyle(
              color: Color(0xff1B5EC9),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
