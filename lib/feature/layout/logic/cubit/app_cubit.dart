import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_ecommerce/feature/cart/presentation/view/cart_view.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/home_view.dart';
import 'package:odc_ecommerce/feature/profile/presentation/view/profile_view.dart';
import 'package:odc_ecommerce/feature/search/presentation/view/search_view.dart';
import 'package:odc_ecommerce/feature/wishlist/presentation/view/profile_view.dart';

part 'app_state.dart';

class AppLayoutCubit extends Cubit<AppLayoutstate> {
  AppLayoutCubit() : super(AppInitial());

  int currentIndex = 0;
  List pages = const [
    HomeView(),
    SearchView(),
    WishlistView(),
    CartView(),
    ProfileView(),
  ];

  void changeBottomNavIndex(index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }
}
