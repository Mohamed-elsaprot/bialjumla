import 'package:bialjumla/const.dart';
import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/app_styles.dart';
import 'package:bialjumla/core/design/images.dart';
import 'package:bialjumla/core/general_widgets/custom_textField.dart';
import 'package:bialjumla/core/general_widgets/item_card.dart';
import 'package:bialjumla/core/general_widgets/small_categories_home_list.dart';
import 'package:bialjumla/features/home/view/widget/banners_slider.dart';
import 'package:bialjumla/features/home/view/widget/circle_items_row.dart';
import 'package:bialjumla/features/home/view/widget/code_container.dart';
import 'package:bialjumla/features/home/view/widget/sliding_offers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CodeContainer(),
            SizedBox(height: 20.h,),
            BannersSlider(images: bannersList,),
            SizedBox(height: 20.h,),
            ...List.generate(3, (index)=>SizedBox(
              height: 140.h,
              child: CircleItemsRow(),
            )),
            SizedBox(height: 20.h,),
            Styles.text('Trending Items',fontWeight: FontWeight.bold),
            SizedBox(height: 10.h,),
            SizedBox(
              height: 280.h,
              child: ListView.separated(
                itemCount: 8,
                separatorBuilder: (context,index)=> SizedBox(width: 10.w,),
                itemBuilder: (context,index)=> SizedBox(width: 150.w,child: ItemCard(index: index,)),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 20.h,),
            SlidingOffers(),
            SizedBox(height: 20.h,),
            SmallCategoriesHomeList(),
            SizedBox(height: 20.h,),
            SizedBox(
              height: 280.h,
              child: ListView.separated(
                itemCount: 8,
                separatorBuilder: (context,index)=> SizedBox(width: 10.w,),
                itemBuilder: (context,index)=> SizedBox(width: 150.w,child: ItemCard(index: index,)),
                scrollDirection: Axis.horizontal,
              ),
            ),

          ]
        ),
      ),
    );
  }
}
