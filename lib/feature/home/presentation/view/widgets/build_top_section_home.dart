import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_app_bar_home.dart';

class BuildTopSectionHome extends StatelessWidget {
  const BuildTopSectionHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .56.sh,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFEB5AE),
            Color(0xffFEB5AE).withOpacity(0.0),
          ],
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Container(
            height: 400.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffFDA56C),
                  Color(0xffFD6C8A),
                  Color(0xffFEB5AE),
                  Color(0xffFEB5AE).withOpacity(0.0),
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
                        fontFamily: 'Plus Jakarta Sans',
                        color: AppColors.kOnPrimary,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Positioned(
            top: 200,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Stack(
                children: [
                  Container(
                    width: 335.w,
                    height: 178.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Background.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5.w,
                    //  bottom: 0,
                    child: Image.asset(
                      'assets/images/speaker.png',
                      width: 111.w,
                      height: 200.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
