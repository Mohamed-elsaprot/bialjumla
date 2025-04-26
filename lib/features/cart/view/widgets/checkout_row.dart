import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_button.dart';

class CheckoutRow extends StatelessWidget {
  const CheckoutRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.black12), // أو bottom, left, right
        ),
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Styles.text('DK 79,088.41',fontWeight: FontWeight.w900,),
              Styles.subTitle('Total incl, VAT',fontWeight: FontWeight.w900,size: 14),
            ],
          ),
          Spacer(),
          CustomButton(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            rad: 4,
            fun: (){
              AppRouter.router.push(AppRouter.checkout);
            },
            title: Texts.checkOut.tr(),
          )
        ],
      ),
    );
  }
}
