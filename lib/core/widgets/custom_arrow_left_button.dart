import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';

class CustomArrowLeftButton extends StatelessWidget {
  const CustomArrowLeftButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: AppColors.kTextFormFeildColor,
            ),
            borderRadius: BorderRadius.circular(34),
          ),
        ),
        child: SvgPicture.asset(
          'assets/images/arrow-left.svg',
          color: AppColors.kbuttonColor,
        ),
      ),
    );
  }
}
