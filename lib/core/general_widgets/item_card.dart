import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/general_widgets/counter_button.dart';
import 'package:bialjumla/core/general_widgets/removed_price.dart';
import 'package:bialjumla/core/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../design/app_styles.dart';
import '../design/fun_widgets.dart';
import 'item_price_row.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.index,}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        AppRouter.router.push(AppRouter.addToCart,extra: index);
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: Colors.white
            ),
            child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            cachedImage('https://img.freepik.com/free-photo/tagliatelle-pasta-with-tomatoes-chicken_2829-18003.jpg?ga=GA1.1.1799300168.1744114418&semt=ais_country_boost&w=740'??'',boxFit: BoxFit.contain,height: 180.h,rad: 14.r),
                            if(false)Container(
                              height: 180.h,width: double.infinity,alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(14.r),
                              ),
                              child: Styles.text(Texts.outOfStock.tr(),color: Colors.white),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h,),
                              ItemPriceRow(),
                              RemovedPrice(removedPrice: 333),
                              Container(
                                alignment: AlignmentDirectional.centerStart,
                                height: 40.h,width: 110.w,child: Styles.text('Alfiradoo Pasta '??'No name' ,size: 13,),),
                             ],
                          ),
                        ),
                      ],
                    ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xfff8dedb),
              borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(14.r),bottomEnd: Radius.circular(14.r))
            ),
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Styles.subTitle('21%',size: 11,color: Color(0xff9f5555),fontWeight: FontWeight.w900),
                Styles.subTitle(Texts.off.tr(),size: 11,color: Color(0xff9f5555),fontWeight: FontWeight.w900),
              ],
            ),
          ),
          Center(
            child: CounterButton(),
          )
        ],
      ),
    );
  }
}
