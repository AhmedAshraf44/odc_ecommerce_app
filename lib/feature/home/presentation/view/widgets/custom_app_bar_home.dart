import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            // color: Colors.red,
            color: AppColors.kOnPrimary.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            'assets/images/location.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kOnPrimary,
                ),
              ),
              Text(
                'Condong Catur',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  color: AppColors.kOnPrimary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            // color: Colors.red,
            color: AppColors.kOnPrimary.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            'assets/images/notifications_icon.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        CircleAvatar(
          radius: 22.r,
          backgroundImage: NetworkImage(
              'https://img.freepik.com/free-photo/happy-man-student-with-afro-hairdo-shows-white-teeth-being-good-mood-after-classes_273609-16608.jpg?t=st=1740437761~exp=1740441361~hmac=3238e9086dbff8a9dbdd61561a77504c91d622c8849294dff45809af92bd0eb1&w=1380'),
        )
      ],
    );
  }
}
