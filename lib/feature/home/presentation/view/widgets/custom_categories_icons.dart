import 'package:flutter/material.dart';

class CustomCategoriesIcons extends StatelessWidget {
  const CustomCategoriesIcons({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 114,
      // height: 40,
      padding: const EdgeInsets.only(top: 4, left: 4, right: 20, bottom: 4),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF4F4F4)),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: ShapeDecoration(
              color: Color(0xFFF3F6FB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Text(
              icon,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                height: 1.71,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF292A2E),
              fontSize: 14,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
              height: 1.29,
            ),
          ),
        ],
      ),
    );
  }
}
