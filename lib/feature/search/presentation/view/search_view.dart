import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/build_grid_view_product.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search laptop, headset..",
                      hintStyle: TextStyle(
                        color: Color(0xFFBCBDC0),
                        fontSize: 16.sp,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(34.r),
                      )),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              BuildGridViewProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
