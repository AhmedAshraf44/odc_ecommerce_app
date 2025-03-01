import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/widgets/service_locator.dart';
import 'package:odc_ecommerce/feature/auth/presentation/view/login_view.dart';
import 'package:odc_ecommerce/feature/home/data/repo/home_repo_impl.dart';
import 'package:odc_ecommerce/feature/home/logic/product_cubit/product_cubit.dart';
import 'package:odc_ecommerce/feature/layout/presentation/view/app_layout.dart';

import 'core/network/dio_helper.dart';

void main() {
  DioHelper.init();
  setupServiceLocator();
  runApp(const OdcEcommerce());
}

class OdcEcommerce extends StatelessWidget {
  const OdcEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: false,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return BlocProvider(
            create: (context) =>
                ProductCubit(getIt.get<HomeRepoImpl>())..getAllProduct(),
            child: MaterialApp(
              routes: {
                '/login': (context) => LoginView(),
              },
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: 'PlusJakartaSans',
              ),
              home: const AppLayout(),
            ),
          );
        });
  }
}
