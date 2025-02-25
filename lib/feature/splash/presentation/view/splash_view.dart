import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../onbording/presentation/view/on_borading_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      backgroundColor: Colors.white,
      childWidget: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 74.w,
                height: 74.h,
                child: Image.asset("assets/images/splash.png")),
            SizedBox(
              height: 34.h,
            ),
            SvgPicture.asset('assets/images/zalada.svg'),
          ],
        ),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: OnBoradingView(),
    );
  }
}
