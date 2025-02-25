import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';

class CustomButtonLoginWith extends StatelessWidget {
  const CustomButtonLoginWith({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 56.h,
      decoration: BoxDecoration(
        color: AppColors.kOnPrimary,
        borderRadius: BorderRadius.circular(30.w),
        border: Border.all(color: AppColors.kTextFormFeildColor),
      ),
      child: CupertinoButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(image),
            Text(
              text,
              style: TextStyle(
                color: AppColors.kTextPrimary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
