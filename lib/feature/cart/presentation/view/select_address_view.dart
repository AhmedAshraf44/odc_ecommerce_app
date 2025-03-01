import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/core/widgets/build_app_bar.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:odc_ecommerce/feature/cart/presentation/view/new_address_view.dart';
import 'package:odc_ecommerce/feature/cart/presentation/view/payment_method_view.dart';

import 'widget/custom_address.dart';

class SelectAddressView extends StatefulWidget {
  const SelectAddressView({super.key});

  @override
  State<SelectAddressView> createState() => _SelectAddressViewState();
}

class _SelectAddressViewState extends State<SelectAddressView> {
  int isAddress = -1;
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
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NewAddressView(),
                  ),
                );
              },
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
                  Icons.add,
                  size: 18,
                ),
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
            label: 'Select Address',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PaymentMethodView(),
                ),
              );
            }),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CustomAddress(
              titleIcon: '🏡',
              title: 'Home',
              onTap: () {
                setState(() {
                  isAddress = 0;
                });
              },
              colorBorder: isAddress == 0 ? Colors.orange : null,
              colorTitle: isAddress == 0 ? Colors.orange : null,
            ),
            CustomAddress(
              titleIcon: '🏢',
              title: 'Office',
              onTap: () {
                setState(() {
                  isAddress = 1;
                });
              },
              colorBorder: isAddress == 1 ? Colors.orange : null,
              colorTitle: isAddress == 1 ? Colors.orange : null,
            ),
            CustomAddress(
              titleIcon: '🏘️',
              title: 'Apartment',
              onTap: () {
                setState(() {
                  isAddress = 2;
                });
              },
              colorBorder: isAddress == 2 ? Colors.orange : null,
              colorTitle: isAddress == 2 ? Colors.orange : null,
            ),
          ],
        ),
      ),
    );
  }
}
