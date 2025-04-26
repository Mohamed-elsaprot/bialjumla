import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_button.dart';

class CompleteOrderContainer extends StatelessWidget {
  const CompleteOrderContainer({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black12))),
      padding: EdgeInsets.only(left: 15.w,right: 15.w, top: 10.h,bottom: 16.h),
      child: Row(
        children: [
          Expanded(
              flex: 10,
              child: Styles.text('${Texts.orderTotal.tr()} ${200} ${Texts.currency.tr()}')),
          Expanded(
              flex: 7,
              child: CustomButton(
                fun: () {},
                title: Texts.confirmOrder.tr(),
                rad: 30,
                padding: EdgeInsets.symmetric(vertical: 7.h),
              )
          )
        ],
      ),
    );
  }
}
