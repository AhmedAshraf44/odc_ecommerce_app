import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final bool isPassword;
  final Widget? icon;
  final void Function()? onPressed;
  final String? Function(String?)? validator;
  const CustomTextInput(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.controller,
      this.isPassword = false,
      this.icon,
      this.onPressed,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.kTextSecondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        TextFormField(
          validator: validator,
          controller: controller,
          obscureText: isPassword,
          cursorColor: AppColors.kbuttonColor,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 16.sp,
              color: AppColors.kTextTertiary,
            ),
            suffixIcon: icon == null
                ? null
                : IconButton(
                    onPressed: onPressed,
                    icon: icon!,
                  ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
              borderSide: BorderSide(
                color: AppColors.kTextFormFeildColor,
                width: 1.w,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
              borderSide: BorderSide(
                color: AppColors.kTextFormFeildColor,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
              borderSide: BorderSide(
                color: AppColors.kTextFormFeildColor,
                width: 1.w,
              ),
            ),
          ),
        )
      ],
    );
  }
}
