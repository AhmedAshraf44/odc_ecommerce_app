import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/widgets/build_app_bar.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';

import '../../../../core/constants/app_colors.dart';

class NewAddressView extends StatelessWidget {
  const NewAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: buildAppBar(
        text: 'Select Address',
        onTap: () {
          Navigator.pop(context);
        },
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 44,
              height: 44,
              padding: const EdgeInsets.all(8),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: AppColors.kTextFormFeildColor,
                  ),
                  borderRadius: BorderRadius.circular(34),
                ),
              ),
              child: Icon(
                Icons.search,
                size: 18,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: CustomButton(
            label: 'Confirm Address',
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: .56.sh,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Map.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Select your location from the map',
                style: TextStyle(
                  color: Color(0xFF292A2E),
                  fontSize: 18.sp,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                  height: 1.44,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Move the pin on the map to find your location and select the delivery address',
                style: TextStyle(
                  color: Color(0xFF7C7D81),
                  fontSize: 14.sp,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Address Detail',
                style: TextStyle(
                  color: Color(0xFF7C7D81),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w500,
                  height: 1.33,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFEAEAEA)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Jl. Seturan indah No.9, Kledokan',
                      style: TextStyle(
                        color: Color(0xFF292A2E),
                        fontSize: 16.sp,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    SvgPicture.asset('assets/images/location.svg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
