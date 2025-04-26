import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';


class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 220.w, child: Styles.text('Product Name',fontWeight: FontWeight.bold,size: 18,maxLines: 2)),
              const Spacer(),
              SizedBox(
                width: 150.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    true?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FittedBox(child: Styles.text('${120} DK',color: Styles.primary,)),
                        SizedBox(width: 8.w,),
                        FittedBox(child: Styles.subTitle('${60} DK',textDecoration: TextDecoration.lineThrough,size: 16)),
                      ],
                    ): FittedBox(child: Styles.text('${50} DK',)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
