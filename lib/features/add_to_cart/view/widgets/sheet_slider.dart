import 'package:bialjumla/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/design/fun_widgets.dart';
import '../../../../core/general_widgets/fav_icon.dart';
import '../../../home/view/widget/banners_slider.dart';

class SheetSlider extends StatelessWidget {
  const SheetSlider({super.key,  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        true?BannersSlider(height: 480.h,images: foodList,rad: 0,): cachedImage('',height: 480),
        PositionedDirectional(
            bottom: 10,end: 10,
            child: Column(
              children: [
                SizedBox(
                    height: 45.sp,width: 45.sp,
                    child: const Icon(Icons.share,color: Colors.black45,size: 26,)
                ),
                const SizedBox(height: 8,),
                SizedBox(
                    height: 45.sp,width: 45.sp,
                    child: FavIcon()
                ),
              ],
            ).animate().slideX(begin: 5,duration: const Duration(milliseconds: 400),curve: Curves.ease)
        )
      ],
    );
  }
}
