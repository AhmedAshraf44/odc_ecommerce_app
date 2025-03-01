import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_ecommerce/core/widgets/service_locator.dart';
import 'package:odc_ecommerce/feature/home/data/repo/home_repo_impl.dart';
import 'package:odc_ecommerce/feature/home/logic/product_cubit/product_cubit.dart';
import 'package:odc_ecommerce/feature/home/logic/product_cubit/product_state.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_card_item.dart';

class BuildGridViewProduct extends StatelessWidget {
  const BuildGridViewProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubit(getIt.get<HomeRepoImpl>())..getAllProduct(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return ConditionalBuilder(
            condition: context.read<ProductCubit>().item != null,
            builder: (context) => GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.2,
              ),
              itemCount: context.read<ProductCubit>().item!.length,
              itemBuilder: (context, index) => CustomItem(
                item: context.read<ProductCubit>().item![index],
              ),
            ),
            fallback: (context) => Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
