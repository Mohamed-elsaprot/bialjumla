import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';

class DealsContainer extends StatefulWidget {
  const DealsContainer({super.key});

  @override
  State<DealsContainer> createState() => _DealsContainerState();
}

class _DealsContainerState extends State<DealsContainer> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ()=> setState(() {
          selected = !selected;
        }),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: selected? Styles.primary:Colors.black26),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.money_dollar,color: selected? Styles.primary:null,size: 18.sp,),
              Styles.text(Texts.deals.tr(),size: 14, fontWeight: FontWeight.w900,color: selected? Styles.primary:null),
            ],
          ),
        ),
      ),
    );
  }
}
