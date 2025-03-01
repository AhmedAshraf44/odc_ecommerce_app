import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/core/widgets/build_app_bar.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: buildAppBar(
        text: 'Payment Method',
        onTap: () {
          Navigator.pop(context);
        },
        actions: null,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          children: [
            CustomPaymentCard(),
          ],
        ),
      ),
    );
  }
}

class CustomPaymentCard extends StatelessWidget {
  const CustomPaymentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFEDEDED)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 22,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mastercard.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MasterCard',
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
                  '**** **** 0783 7873',
                  style: TextStyle(
                    color: Color(0xFF7C7D81),
                    fontSize: 12.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.w),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 24.sp,
          ),
        ],
      ),
    );
  }
}
