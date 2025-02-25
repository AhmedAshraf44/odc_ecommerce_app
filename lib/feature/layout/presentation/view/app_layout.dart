import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/feature/layout/logic/cubit/app_cubit.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppLayoutCubit(),
      child: BlocBuilder<AppLayoutCubit, AppLayoutstate>(
        builder: (context, state) {
          var cubit = context.read<AppLayoutCubit>();
          return Scaffold(
              backgroundColor: Color(0xffFEFEFE),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle: TextStyle(
                    color: Color(0xff2D3C52),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500),
                unselectedLabelStyle: TextStyle(
                    color: Color(0xff989E9F),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500),
                selectedIconTheme: IconThemeData(
                  color: Color(0xff2D3C52),
                ),
                unselectedIconTheme: IconThemeData(
                  color: Color(0xff989E9F),
                ),
                selectedItemColor: Color(0xff2D3C52),
                currentIndex: cubit.currentIndex,
                backgroundColor: Color(0xffFFFFFF),
                onTap: (index) {
                  cubit.changeBottomNavIndex(index);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_border), label: 'Wishlist'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_3_outlined), label: 'Profile'),
                ],
              ),
              body: cubit.pages[cubit.currentIndex]);
        },
      ),
    );
  }
}
