import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/core/constants/app_colors.dart';
import 'package:odc_ecommerce/core/widgets/build_app_bar.dart';
import 'package:odc_ecommerce/core/widgets/custom_button.dart';
import 'package:odc_ecommerce/core/widgets/show_notification.dart';
import 'package:odc_ecommerce/feature/cart/logic/cart_cubit.dart';
import 'package:odc_ecommerce/feature/cart/presentation/view/select_address_view.dart';
import 'package:odc_ecommerce/feature/cart/presentation/view/widget/custom_card_item.dart';
import 'package:odc_ecommerce/feature/cart/presentation/view/widget/custom_cart_empty.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit()..getCartData(),
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.kBackgroundColor,
            appBar: buildAppBar(
              text: 'Cart',
              onTap: () {},
              actions: [],
            ),
            body: ConditionalBuilder(
                condition: context.read<CartCubit>().products.isNotEmpty,
                builder: (context) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: context.watch<CartCubit>().products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: CustomCardItem(
                          quantity:
                              context.read<CartCubit>().quantity.toString(),
                          onTapToAdd: () {
                            context.read<CartCubit>().addToQuantity(
                                  price: context
                                      .read<CartCubit>()
                                      .products[index]
                                      .price!
                                      .toDouble(),
                                );
                          },
                          onTapToRemove: () {
                            context.read<CartCubit>().removeToQuantity(
                                  price: context
                                      .read<CartCubit>()
                                      .products[index]
                                      .price!
                                      .toDouble(),
                                );
                          },
                          onPressed: () {
                            context.read<CartCubit>().deleteProduct(
                                context.read<CartCubit>().products[index].id!,
                                index);
                            showNotification(context,
                                title: 'deleted',
                                description:
                                    'Item has been successfully deleted.');
                          },
                          image:
                              context.watch<CartCubit>().products[index].image!,
                          title:
                              context.watch<CartCubit>().products[index].title!,
                          price: context
                              .watch<CartCubit>()
                              .products[index]
                              .price
                              .toString(),
                        ),
                      );
                    },
                  );
                },
                fallback: (context) {
                  return CustomCartEmpty();
                }),
            bottomNavigationBar: context.read<CartCubit>().products.isNotEmpty
                ? Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                    child: CustomButton(
                        label: 'Order',
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectAddressView(),
                          ));
                        }),
                  )
                // Container(
                //     height: 100,
                //     color: Colors.blue,
                //     child: Center(
                //       child: Text(
                //         'Total Price: ${context.watch<CartCubit>().totalPrice}',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   )
                : null,
          );
        },
      ),
    );
  }
}
