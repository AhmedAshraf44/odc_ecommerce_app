import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/feature/home/data/model/all_product_model/all_product_model.dart';
import 'package:odc_ecommerce/feature/home/presentation/view/product_details.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.item});
  final AllProductModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetails(
            item: item,
          ),
        ));
      },
      child: Card(
        color: Colors.white,
        elevation: .1,
        child: Container(
          width: 160.w,
          //height: 215.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                    vertical: 14.h,
                  ),
                  child: Center(
                    child: CachedNetworkImage(
                      imageUrl: item.image!,
                      height: 100.h,
                      fit: BoxFit.fill,
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
//  Image.network(
//                       item.image!,
//                       height: 100.h,
//                       //fit: BoxFit.cover,
//                     ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),

                Text(
                  item.title!,
                  //textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF292A2E),
                    fontSize: 14.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 1.43,
                  ),
                ),
                Spacer(),
                Text(
                  r'$' '${item.price!}',
                  style: TextStyle(
                    color: Color(0xFF1B5EC9),
                    fontSize: 16,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                  ),
                ),
                // Spacer(),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
