import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/core/widgets/custom_app_bar_details_product.dart';
import 'package:odc_ecommerce/core/widgets/custom_bottom_nav_product_details.dart';
import 'package:odc_ecommerce/feature/home/data/model/all_product_model/all_product_model.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/category_list_view.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_select_color_product.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.item});
  final AllProductModel item;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      bottomNavigationBar: CustomBottomNavProductDetails(
        item: widget.item,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBarDetailsProduct(),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 61.w),
                    child: Text(
                      textAlign: TextAlign.center,
                      widget.item.title!,
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xFF292A2E),
                        fontSize: 24.sp,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        height: 1.25,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '\$${widget.item.price}',
                    style: TextStyle(
                      color: Color(0xFF1B5EC9),
                      fontSize: 20.sp,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.20,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36.w),
                    child: Container(
                      width: 210..w,
                      height: 221.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            widget.item.image!,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'Space Grey',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF959699),
                      fontSize: 12.sp,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      height: 1.33,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSelectColorProduct(
                        color: Color(0xFFA6A5AA),
                        onTap: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        side: index == 0
                            ? BorderSide(
                                width: 3.w,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              )
                            : BorderSide.none,
                        shadows: index == 0
                            ? [
                                BoxShadow(
                                  color: Color(0xFFA6A5AA),
                                  blurRadius: 0,
                                  offset: Offset(0, 0),
                                  spreadRadius: 2,
                                ),
                              ]
                            : null,
                      ),
                      SizedBox(width: 20.w),
                      CustomSelectColorProduct(
                        color: Color(0xFFE8E8EA),
                        onTap: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        side: index == 1
                            ? BorderSide(
                                width: 3.w,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              )
                            : BorderSide.none,
                        shadows: index == 1
                            ? [
                                BoxShadow(
                                  color: Color(0xFFE8E8EA),
                                  blurRadius: 0,
                                  offset: Offset(0, 0),
                                  spreadRadius: 2,
                                ),
                              ]
                            : null,
                      ),
                      SizedBox(width: 20.w),
                      CustomSelectColorProduct(
                        color: Color(0xFFF2E0CC),
                        onTap: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        side: index == 2
                            ? BorderSide(
                                width: 3.w,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.white,
                              )
                            : BorderSide.none,
                        shadows: index == 2
                            ? [
                                BoxShadow(
                                  color: Color(0xFFF2E0CC),
                                  blurRadius: 0,
                                  offset: Offset(0, 0),
                                  spreadRadius: 2,
                                ),
                              ]
                            : null,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: double.infinity,
                    height: 4.h,
                    decoration: BoxDecoration(color: Color(0xFFF0F1F5)),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Description',
                      style: TextStyle(
                        color: Color(0xFF292A2E),
                        fontSize: 18.sp,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        height: 1.44,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text.rich(
                      maxLines: 3,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: widget.item.description,
                            style: TextStyle(
                              color: Color(0xFF7C7D81),
                              fontSize: 14.sp,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.43,
                            ),
                          ),
                          TextSpan(
                            text: ' Read More',
                            style: TextStyle(
                              color: Color(0xFF1B5EC9),
                              fontSize: 14.sp,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w700,
                              height: 1.43,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 52.h),
                    Text(
                      'Product Related',
                      style: TextStyle(
                        color: Color(0xFF292A2E),
                        fontSize: 18,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        height: 1.44,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    CategoryListView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
