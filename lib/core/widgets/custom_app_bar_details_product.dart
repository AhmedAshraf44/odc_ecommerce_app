import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/core/widgets/custom_arrow_left_button.dart';

class CustomAppBarDetailsProduct extends StatelessWidget {
  const CustomAppBarDetailsProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomArrowLeftButton(
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          Container(
            width: 44,
            height: 44,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: AppColors.kTextFormFeildColor,
                ),
                borderRadius: BorderRadius.circular(34),
              ),
            ),
            child: Center(
                child: Icon(
              Icons.favorite_border_sharp,
              color: AppColors.kbuttonColor,
              size: 24.sp,
            )),
          ),
        ],
      ),
    );
  }
}
