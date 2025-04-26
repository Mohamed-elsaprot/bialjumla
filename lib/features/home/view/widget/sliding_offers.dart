import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/design/fun_widgets.dart';
import '../../../../core/design/images.dart';

class SlidingOffers extends StatelessWidget {
  const SlidingOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(Images.products,height: 20.h,),
            SizedBox(width: 5.w,),
            Styles.text('Essential For Your Home!',fontWeight: FontWeight.bold),
          ],
        ),
        SizedBox(height: 10.h,),
        SizedBox(
          height: 360.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=> cachedImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/ramadan-special-grocery-discount-offer-banner-design-template-c2fd90016dd20d0c704fc1720d1c753b_screen.jpg?ts=1637027445',
                height: 350.h,width:220.w,rad: 14.r
              // boxFit: BoxFit.contain
            ),
            separatorBuilder: (context,index)=> SizedBox(width: 12.w,),
            itemCount: 8,
          ),
        ),
      ],
    );
  }
}
