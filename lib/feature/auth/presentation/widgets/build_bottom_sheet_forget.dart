import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:odc_ecommerce/feature/auth/presentation/view/Otp_view.dart';

import '../../../../core/constants/app_colors.dart';

class BuildBottomSheetForget extends StatelessWidget {
  const BuildBottomSheetForget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 334.h,
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
            Container(
              height: 4.h,
              width: 67.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.w),
                color: Color(0xff000000).withOpacity(.2),
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Forget password',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'Select which contact details should we use to reset your password',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 24.h),
            Container(
              height: 76.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                border: Border.all(
                  color: AppColors.kTextFormFeildColor,
                  width: 1.w,
                ),
              ),
              child: ListTile(
                leading: Container(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffF3F6FB),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/email.svg',
                    height: 24.h,
                    width: 24.w,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                title: Text(
                  'Send via Email',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kTextSecondary,
                  ),
                ),
                subtitle: Text(
                  'bryan.adam83@gmail.com',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kTextPrimary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            CustomButton(
              label: 'Continue',
              onPressed: () {
                //print(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpView(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
