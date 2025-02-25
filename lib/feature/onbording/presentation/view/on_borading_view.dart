import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/feature/auth/presentation/view/login_view.dart';
import 'package:odc_ecommerce/feature/onbording/data/model/onborading_model.dart';

class OnBoradingView extends StatelessWidget {
  const OnBoradingView({super.key});
  static List<OnboradingModel> data = [
    OnboradingModel(
      title: "Find the item you've been looking for",
      subTitle:
          "Here you'll see rich varieties of goods, carefully classified for seamless browsing experience",
      image: 'assets/images/pick & pay.svg',
    ),
    OnboradingModel(
      title: "Get those shopping bags filled",
      subTitle:
          "Add any item you want to your cart or save it on your wishlist, so you don't miss it in your future purchase.",
      image: 'assets/images/shopping-basket.svg',
    ),
    OnboradingModel(
      title: "Fast & Secure payment",
      subTitle:
          "There are many payment options available to speed up and simplify your payment process.",
      image: 'assets/images/secure paymet.svg',
    ),
  ];
  static PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kOnPrimary,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => LoginView(),
                  ),
                  (route) => false,
                );
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kTextPrimary,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.kOnPrimary,
      ),
      body: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemCount: data.length,
        itemBuilder: (context, index) => Column(
          children: [
            SvgPicture.asset(data[index].image),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: Column(
                children: [
                  Text(
                    data[index].title,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    data[index].subTitle,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kTextSecondary),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            InkWell(
              onTap: () {
                if (controller.page!.toInt() < data.length - 1) {
                  controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }
                if (controller.page!.toInt() == data.length - 1) {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => LoginView(),
                    ),
                    (route) => false,
                  );
                }
              },
              child: Container(
                width: 94.w,
                height: 94.h,
                decoration: BoxDecoration(
                  color: AppColors.kOnPrimary,
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(BorderSide(
                    color: Color(0xffD9D9D9),
                  )),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    height: 62.h,
                    width: 62.w,
                    decoration: BoxDecoration(
                      color: Color(0xff2D3C52),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/arrow-right.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
