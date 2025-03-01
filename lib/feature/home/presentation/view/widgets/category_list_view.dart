import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/feature/home/logic/product_cubit/product_cubit.dart';
import 'package:odc_ecommerce/feature/home/logic/product_cubit/product_state.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_card_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return ConditionalBuilder(
          condition: context.read<ProductCubit>().item != null,
          builder: (context) => SizedBox(
            height: .35.sh,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: context.read<ProductCubit>().item!.length,
                // categoryList.categoryList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: CustomItem(
                      item: context.read<ProductCubit>().item![index],
                    ),
                  );
                }),
          ),
          fallback: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
