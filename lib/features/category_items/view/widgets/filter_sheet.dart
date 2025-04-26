import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/app_styles.dart';
import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:bialjumla/core/general_widgets/custom_checkbox.dart';
import 'package:bialjumla/features/category_items/view/widgets/price_range_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterSheet extends StatelessWidget {
  const FilterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context,title: Texts.filterBy.tr(),color: Colors.transparent,textColor: Colors.black),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Styles.text(Texts.brand.tr(),fontWeight: FontWeight.bold),
            SizedBox(height: 15.h,),
            ...List.generate(4, (index)=>CustomCheckbox(title: 'Title $index',count: (index+2).toString(),)),
            Divider(color: Colors.black26,height: 40.h,),
            Styles.text(Texts.size.tr(),fontWeight: FontWeight.bold),
            SizedBox(height: 15.h,),
            ...List.generate(4, (index)=>CustomCheckbox(title: 'Title $index',count: (index+2).toString(),)),
            Divider(color: Colors.black26,height: 40.h,),
            Styles.text(Texts.deals.tr(),fontWeight: FontWeight.bold),
            SizedBox(height: 15.h,),
            ...List.generate(4, (index)=>CustomCheckbox(title: 'Title $index',count: (index+2).toString(),)),
            Divider(color: Colors.black26,height: 40.h,),
            Styles.text(Texts.price.tr(),fontWeight: FontWeight.bold),
            SizedBox(height: 15.h,),
            PriceRangeSlider(),
            SizedBox(height: 15.h,),
          ],
        ),
      ),
    );
  }
}
