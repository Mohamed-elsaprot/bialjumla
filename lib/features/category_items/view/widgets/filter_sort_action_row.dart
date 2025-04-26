import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/fun_widgets.dart';
import 'package:bialjumla/features/category_items/view/widgets/deals_container.dart';
import 'package:bialjumla/features/category_items/view/widgets/filter_sheet.dart';
import 'package:bialjumla/features/category_items/view/widgets/sort_sheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';

class FilterSortActionRow extends StatelessWidget {
  const FilterSortActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: ()=> bottomSheet(context, FilterSheet()),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: Colors.black26),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.filter_list_rounded,size: 18.sp,),
                  Styles.text(Texts.filter.tr(),size: 14, fontWeight: FontWeight.w900,),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 6.w),
        Expanded(
          child: GestureDetector(
            onTap: ()=> bottomSheet(context, SortSheet()),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: Colors.black26),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.sort_down,size: 18.sp),
                  Styles.text(Texts.sort.tr(),size: 14, fontWeight: FontWeight.w900),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 6.w),
        DealsContainer(),
      ],
    );
  }
}
