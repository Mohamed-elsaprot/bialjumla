import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/design/app_styles.dart';
import 'custom_continer.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomContainer(
        body:[
          Row(
            children: [
              Icon(Icons.price_change,color: Styles.primary,),
              SizedBox(width: 6.w,),
              Styles.text(Texts.costSummary.tr()),
            ],
          ),
          Divider(height: 14.h),
          Row(
            children: [
              Styles.subTitle(Texts.productsCount.tr(),size: 15),
              const Spacer(),
              Styles.text(4.toString()),
            ],
          ),
          SizedBox(height: 6.h,),
          true?Row(
            children: [
              Styles.subTitle(Texts.discount.tr(),size: 15),
              const Spacer(),
              Styles.text('${20} ${Texts.currency.tr()}',color: Colors.red),
            ],
          ):const SizedBox(),
          SizedBox(height: 6.h,),
          Row(
            children: [
              Styles.subTitle(Texts.productsPrice.tr(),size: 15),
              const Spacer(),
              Styles.text('${200} ${Texts.currency.tr()}'),
            ],
          ),
          SizedBox(height: 6.h,),
          Row(
            children: [
              Styles.subTitle(Texts.shippingFees.tr(),size: 15),
              const Spacer(),
              Styles.text('${50} ${Texts.currency.tr()}'),
            ],
          ),

        ]
    );
  }
}
