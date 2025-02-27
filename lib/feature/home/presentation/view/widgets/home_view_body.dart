import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/build_all_container.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/build_grid_view_product.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/build_top_section_home.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/category_list_view.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_categories_icons.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/widgets/custom_timer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: BuildTopSectionHome()),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot deals🔥',
                      style: TextStyle(
                        color: Color(0xFF292A2E),
                        fontSize: 18,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        height: 1.44,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    CustomTimer(),
                  ],
                ),
                CategoryListView(),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                    color: Color(0xFF292A2E),
                    fontSize: 18,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 1.44,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: ListView.builder(
                      //shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Row(
                            children: [
                              BuildAllContainer(),
                              SizedBox(
                                width: 12.w,
                              ),
                              CustomCategoriesIcons(
                                text: 'Laptop',
                                icon: '💻',
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              CustomCategoriesIcons(
                                text: 'Accessories',
                                icon: '🎧',
                              ),
                            ],
                          ),
                      itemCount: 1),
                ),
                BuildGridViewProduct()
              ],
            ),
          ),
        )
      ],
    );
  }
}
