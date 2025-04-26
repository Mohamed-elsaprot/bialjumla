import 'package:bialjumla/features/categories/view/widgets/category_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/appTexts.dart';
import '../../../core/design/app_styles.dart';
import '../../../core/design/images.dart';
import '../../../core/general_widgets/custom_textField.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,backgroundColor: Styles.primary,
        title: Image.asset(Images.logo,height: 80.h,),
        toolbarHeight: 70.h,
        bottom: PreferredSize(
            preferredSize: Size(0, 70.h),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.h,left: 10.w,right: 10.w),
              child: Row(
                children: [
                  Image.asset(Images.logo,width: 80.w,),
                  SizedBox(width: 6.w,),
                  Expanded(
                    child: CustomTextField(
                      height: 60.h,
                      controller: TextEditingController(),
                      prefixIcon: Icon(CupertinoIcons.search),
                      fillColor: Colors.white,hint: Texts.searchForProducts.tr(),
                      inputBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.black12,width: .1)),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context,index)=>SizedBox(height: 20.h,),
        itemCount: 8,
        padding: EdgeInsets.symmetric(vertical: 15.h),
        itemBuilder: (context,index)=> CategoryList(categoryTitle: 'Fresh Food',),
      ),
    );

  }
}
