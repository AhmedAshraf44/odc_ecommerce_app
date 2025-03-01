import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddress extends StatelessWidget {
  const CustomAddress({
    super.key,
    required this.titleIcon,
    required this.title,
    this.onTap,
    this.colorTitle,
    this.colorBorder,
  });
  final String titleIcon;
  final String title;
  final void Function()? onTap;
  final Color? colorTitle;
  final Color? colorBorder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 335,
          height: 144,
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side:
                  BorderSide(width: 1, color: colorBorder ?? Color(0xFFEAEAEA)),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF3F6FB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      titleIcon,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.71,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    title,
                    style: TextStyle(
                      color: colorTitle ?? Color(0xFF292A2E),
                      fontSize: 14.sp,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.29,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: ShapeDecoration(
                      color: Color(0xFF20AD20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Default',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jl. Pangkur, Ngaglik, Sleman, Yogyakarta',
                          style: TextStyle(
                            color: Color(0xFF292A2E),
                            fontSize: 14.sp,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.43,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '+62812 788 61 1672',
                          style: TextStyle(
                            color: Color(0xFF292A2E),
                            fontSize: 14.sp,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.43,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.w),
                  SizedBox(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/select_address.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
