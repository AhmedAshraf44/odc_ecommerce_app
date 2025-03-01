import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem(
      {super.key,
      required this.title,
      required this.price,
      this.onPressed,
      required this.image,
      this.onTapToRemove,
      this.onTapToAdd,
      required this.quantity});
  final String title;
  final String price;
  final String image;
  final void Function()? onPressed;
  final void Function()? onTapToRemove;
  final void Function()? onTapToAdd;
  final String quantity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 70.w,
              height: 130.h,
              decoration: ShapeDecoration(
                color: Color(0x42464B5E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    image,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xFF292A2E),
                        fontSize: 14.sp,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        height: 1.43,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      price.toString(),
                      style: TextStyle(
                        color: Color(0xFF1B5EC9),
                        fontSize: 14.sp,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.43,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: onTapToRemove,
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: ShapeDecoration(
                              color: AppColors.kOnPrimary,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFEAEAEA)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Center(child: Icon(Icons.remove)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Text(
                            quantity,
                            style: TextStyle(
                              color: Color(0xFF303336),
                              fontSize: 14.sp,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: onTapToAdd,
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: ShapeDecoration(
                              color: AppColors.kOnPrimary,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFEAEAEA)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Center(child: Icon(Icons.add)),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                          ),
                          onPressed: onPressed,
                        ),
                        Spacer(),
                        Text(
                          'x$quantity',
                          style: TextStyle(
                            color: Color(0xFF292A2E),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.43,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
