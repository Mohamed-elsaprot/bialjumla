import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/design/fun_widgets.dart';

class RecommendationList extends StatelessWidget {
  const RecommendationList({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=> GestureDetector(
            onTap: (){

            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r)
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 6.h),
                    height: 70.h,width: 70.w,
                    child: cachedImage(
                        'https://img.freepik.com/premium-photo/donation-box-food-support-help-poor-people-world-isolated-white-background-with-clipping-path_39768-4696.jpg?w=996'
                    ),
                  ),
                  SizedBox(height: 6.h,),
                  Styles.text(Texts.add.tr(),size: 12,color: Styles.primary,fontWeight: FontWeight.bold)
                ],
              ),
            ),
          ),
          separatorBuilder:  (context,index)=> SizedBox(width: 6.w,),
          itemCount: 8),
    );
  }
}
