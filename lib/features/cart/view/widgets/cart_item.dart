import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/design/fun_widgets.dart';
import 'cart_counter_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 16.h),
      margin: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        children: [
          cachedImage('https://img.freepik.com/free-psd/skin-product-isolated_23-2151353721.jpg?ga=GA1.1.1799300168.1744114418&semt=ais_hybrid&w=740',height: 60,width: 60),
          SizedBox(width: 8.w,),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Styles.text('Product Name',size: 14,overflow: TextOverflow.ellipsis),
                SizedBox(height: 8.h,),
                Styles.text('149.99 DK',size: 14,fontWeight: FontWeight.w900),
              ],
            ),
          ),
          SizedBox(width: 10.w,),
          Expanded(
              flex: 5,
              child: CartCounterButton()
          ),
        ],
      ),
    );
  }
}
