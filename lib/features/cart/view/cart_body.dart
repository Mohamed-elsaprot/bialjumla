import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/app_styles.dart';
import 'package:bialjumla/core/design/images.dart';
import 'package:bialjumla/features/cart/view/widgets/available_payments.dart';
import 'package:bialjumla/features/cart/view/widgets/cart_empty.dart';
import 'package:bialjumla/features/cart/view/widgets/cart_item.dart';
import 'package:bialjumla/features/cart/view/widgets/checkout_row.dart';
import 'package:bialjumla/features/cart/view/widgets/recommendation_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,scrolledUnderElevation: 0,
        title: Styles.text(Texts.basket.tr(),fontWeight: FontWeight.w900, size: 20),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            true? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Styles.text(Texts.orderAgain,fontWeight: FontWeight.w700,size: 16),
                SizedBox(height: 15.h,),
                RecommendationList(),
                SizedBox(height: 25.h,),
                Styles.subTitle('8 ${Texts.items.tr()}',fontWeight: FontWeight.bold,size: 14),
                SizedBox(height: 10.h,),
                ...List.generate(8, (index)=> CartItem()),
                SizedBox(height: 20.h,),
                Styles.text(Texts.topPicksForYou.tr(),fontWeight: FontWeight.w700),
                SizedBox(height: 10.h,),
                RecommendationList(),
                SizedBox(height: 10.h, ),
              ],
            ):
            CartEmpty(),
            AvailablePayments()
          ],
        ),
      ),
      bottomNavigationBar: true? CheckoutRow():SizedBox(),
    );
  }
}
