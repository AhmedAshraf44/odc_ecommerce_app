import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCartEmpty extends StatelessWidget {
  const CustomCartEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/cart_empty.svg'),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: Column(
              children: [
                Text(
                  'Your cart is an empty!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF292A2E),
                    fontSize: 20,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 1.40,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Looks like you haven\'t added anything to your cart yet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7C7D81),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                    height: 1.43,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
