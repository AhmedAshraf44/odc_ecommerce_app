import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/core/widgets/custom_arrow_left_button.dart';

PreferredSizeWidget buildAppBar(
    {required String text,
    required void Function()? onTap,
    required List<Widget>? actions}) {
  return AppBar(
    backgroundColor: AppColors.kBackgroundColor,
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomArrowLeftButton(
        onTap: onTap,
      ),
    ),
    //leadingWidth: 50,
    title: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF292A2D),
        fontSize: 18.sp,
        fontFamily: 'Plus Jakarta Sans',
        fontWeight: FontWeight.w600,
        height: 1.44,
      ),
    ),
    actions: actions,
  );
}
