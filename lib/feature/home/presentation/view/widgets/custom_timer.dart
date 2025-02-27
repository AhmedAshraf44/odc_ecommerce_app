import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_container_timer.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_dot_timer.dart';

class CustomTimer extends StatelessWidget {
  const CustomTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainerTimer(
          text: '02',
        ),
        SizedBox(width: 2.w),
        CustomDotTimer(),
        SizedBox(width: 2.w),
        CustomContainerTimer(
          text: '02',
        ),
        SizedBox(width: 2.w),
        CustomDotTimer(),
        SizedBox(width: 2.w),
        CustomContainerTimer(
          text: '02',
        ),
      ],
    );
  }
}
