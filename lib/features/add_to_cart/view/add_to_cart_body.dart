import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/general_widgets/related_products_list.dart';
import 'package:bialjumla/features/add_to_cart/view/widgets/add_to_cart_button.dart';
import 'package:bialjumla/features/add_to_cart/view/widgets/product_details_container.dart';
import 'package:bialjumla/features/add_to_cart/view/widgets/sheet_counter.dart';
import 'package:bialjumla/features/add_to_cart/view/widgets/sheet_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_styles.dart';
import '../../../core/general_widgets/custom_button.dart';

class AddToCartBody extends StatelessWidget {
  const AddToCartBody({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Column(
              children: [
                SheetSlider(),
                Column(
                  children: [
                    ProductDetailsContainer(),
                    false?Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 6.h,top: 6.h),
                        child: CustomButton(fun: (){}, title: 'Not Valid',rad: 50,backGroundColor: Colors.grey,)
                    ): Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(child: SizedBox(),),
                          const SheetCounter(),
                          const Expanded(child: SizedBox(),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: AddToCartButton(),
                          ),
                          const Expanded(child: SizedBox(),)
                        ],
                      ),
                    ),
                    if(true)Container(
                      color: Colors.white,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Styles.text(Texts.description.tr(),fontWeight: FontWeight.bold),
                          const SizedBox(height: 8,),
                          Styles.subTitle('We will put a product Description here and expected that it will be two lines',size: 12),
                        ],
                      ),
                    ),
                    RelatedProductsList(relatedList: [])
                  ],
                ).animate().slideY(begin: 1,duration: const Duration(milliseconds: 400),curve: Curves.ease)
              ],
            ),
          ),
          GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40.h),color: Colors.transparent,
              child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 28,),
            ),
          ),
        ],
      ),
    );
  }
}
