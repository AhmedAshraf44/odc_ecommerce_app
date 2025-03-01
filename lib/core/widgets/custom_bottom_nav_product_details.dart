import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/db/local_db/local_db_helper.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:odc_ecommerce/core/widgets/show_notification.dart';
import 'package:odc_ecommerce/feature/home/data/model/all_product_model/all_product_model.dart';

class CustomBottomNavProductDetails extends StatefulWidget {
  const CustomBottomNavProductDetails({
    super.key,
    required this.item,
  });
  final AllProductModel item;

  @override
  State<CustomBottomNavProductDetails> createState() =>
      _CustomBottomNavProductDetailsState();
}

class _CustomBottomNavProductDetailsState
    extends State<CustomBottomNavProductDetails> {
  bool isCart = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 112.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x11576F85),
            blurRadius: 32,
            offset: Offset(0, -1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                SQLHelper.add(
                  widget.item.id!.toString(),
                  widget.item.title!,
                  widget.item.description ?? "",
                  widget.item.image!,
                  1,
                  widget.item.price!,
                );
                setState(() {
                  isCart = true;
                });
                showNotification(context,
                    title: 'Update', description: 'item Added to cart');
              },
              child: Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: isCart ? Colors.red : null,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFEAEAEA)),
                    borderRadius: BorderRadius.circular(34),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/images/cart.svg',
                  color: isCart ? Colors.white : null,
                ),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            CustomButton(
              label: 'Checkout',
              onPressed: () {},
              width: 267.w,
            )
          ],
        ),
      ),
    );
  }
}
