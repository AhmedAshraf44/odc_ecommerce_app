import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_app_bar_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffFDA56C),

            Color(0xffFD6C8A),
            Color(0xffFEB5AE),
            //  FBCCDC
            Color(0xffFEB5AE).withOpacity(0.1),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 48.h,
            ),
            CustomAppBarHome(),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Find best device for your setup!',
              style: TextStyle(
                  color: AppColors.kOnPrimary,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 24.h,
            ),
          ],
        ),
      ),
    );
  }
}
