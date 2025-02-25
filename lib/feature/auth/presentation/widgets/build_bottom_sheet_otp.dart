import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:odc_ecommerce/feature/layout/presentation/view/app_layout.dart';

class BuildBottomSheetOtp extends StatelessWidget {
  const BuildBottomSheetOtp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580.sh,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.w),
          topRight: Radius.circular(24.w),
        ),
        color: AppColors.kOnPrimary,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: SizedBox(
                width: 67.w,
                height: 4.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150.r),
                  child: Divider(
                    thickness: 4.h,
                    color: Color(0xff000000).withOpacity(.2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            SvgPicture.asset('assets/images/success.svg'),
            SizedBox(height: 24.h),
            Text(
              'Congratulations!',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              textAlign: TextAlign.center,
              'Your account is ready to use. You will be redirected to the Homepage in a few seconds.',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kTextSecondary),
            ),
            SizedBox(height: 24.h),
            CustomButton(
              label: 'Continue',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppLayout(),
                  ),
                  (route) => false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
