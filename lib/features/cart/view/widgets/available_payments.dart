import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/appTexts.dart';
import '../../../../core/design/app_styles.dart';
import '../../../../core/design/images.dart';

class AvailablePayments extends StatelessWidget {
  const AvailablePayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h,),
        Center(child: Styles.text(Texts.availablePaymentMethods.tr(),size: 15,fontWeight: FontWeight.w900)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.visa,width: 35.w,),
            SizedBox(width: 10.w,),
            Image.asset(Images.masterCard,width: 35.w,),
          ],
        )
      ],
    );
  }
}
