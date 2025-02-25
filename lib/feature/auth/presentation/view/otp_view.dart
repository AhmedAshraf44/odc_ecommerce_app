import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/build_bottom_sheet_otp.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kOnPrimary,
      appBar: AppBar(
        backgroundColor: AppColors.kOnPrimary,
        centerTitle: true,
        leadingWidth: 100.w,
        leading: Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            Container(
                height: 44.h,
                width: 44.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.kTextFormFeildColor,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_sharp,
                    ),
                  ),
                )),
          ],
        ),
        title: Text(
          'Otp View',
          style: TextStyle(
            color: AppColors.kTextPrimary,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/OTP.svg'),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Verification code',
              style: TextStyle(
                color: AppColors.kTextPrimary,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "We have sent the code verification to your WhatsApp Number ",
                    style: TextStyle(
                      color: AppColors.kTextSecondary,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: " +62812 788 6XXXX",
                    style: TextStyle(
                      color: AppColors.kTextPrimary,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                selectedColor: AppColors.kbuttonColor,
                inactiveFillColor: AppColors.kOnPrimary,
                activeFillColor: AppColors.kOnPrimary,
                activeColor: AppColors.kTextFormFeildColor,
                selectedFillColor: AppColors.kOnPrimary,
                inactiveColor: AppColors.kTextFormFeildColor,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(12.w),
                fieldHeight: 72.h,
                fieldWidth: 74.w,
              ),
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              onCompleted: (v) {
                print("Completed");
              },
              // onChanged: (value) {
              //   print(value);
              // },
              // beforeTextPaste: (text) {
              //   print("Allowing to paste $text");
              //   return true;
              // },
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Recent code in 32s',
              style: TextStyle(
                color: AppColors.kTextPrimary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            CustomButton(
                label: 'Continue',
                onPressed: () {
                  showModalBottomSheet(
                    isDismissible: true,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => SizedBox(
                      height: 580.h,
                      child: BuildBottomSheetOtp(),
                    ),
                  );
                }),
            SizedBox(
              height: 8.h,
            )
          ],
        ),
      ),
    );
  }
}
