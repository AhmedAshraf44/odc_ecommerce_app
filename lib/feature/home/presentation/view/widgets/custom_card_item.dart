import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_ecommerce/feature/home/data/model/all_product_model/all_product_model.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key, required this.item});
  final AllProductModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  child: Image.network(
                    item.image!,
                    height: 100.h,
                    //fit: BoxFit.cover,
                  ),
                ),
              ),
              Spacer(),
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
              SizedBox(
                height: 4.h,
              ),
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
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
