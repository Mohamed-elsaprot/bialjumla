import 'package:bialjumla/const.dart';
import 'package:bialjumla/core/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/appTexts.dart';
import '../../../../core/design/app_styles.dart';
import '../../../../core/design/fun_widgets.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key, required this.categoryTitle});
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            children: [
              Styles.text(categoryTitle,fontWeight: FontWeight.w900,size: 20),
              Spacer(),
              GestureDetector(
                  onTap: (){},
                  child: Styles.text(Texts.viewAll.tr(),fontWeight: FontWeight.w900,color: Styles.primary,size: 16)
              )
            ],
          ),
        ),
        SizedBox(height: 15.h,),
        SizedBox(
          height: 130.h,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=> GestureDetector(
                onTap: (){
                  AppRouter.router.push(AppRouter.categoryItems);
                },
                child: Container(
                  width: 140.w,
                  decoration: BoxDecoration(
                      color: Styles.primary.withOpacity(.065),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Styles.text('Fruits', maxLines: 2,overflow: TextOverflow.ellipsis),
                      SizedBox(height: 6.h,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: cachedImage(
                              vegetables,
                              boxFit: BoxFit.contain,rad: 12.r
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context,index)=> SizedBox(width: 10.h,),
              itemCount: 8
          ),
        ),
      ],
    );
  }
}
