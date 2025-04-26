import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const.dart';
import '../../../../core/design/app_styles.dart';
import '../../../../core/design/fun_widgets.dart';

class SideCatSlider extends StatefulWidget {
  const SideCatSlider({super.key});

  @override
  State<SideCatSlider> createState() => _SideCatSliderState();
}

class _SideCatSliderState extends State<SideCatSlider> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
        child: Column(
          children: List.generate(20, (index)=> GestureDetector(
            onTap: (){
              setState(() {
                selected = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: selected==index? Styles.primary : Colors.white,
                    child: cachedImage(vegetables, boxFit: BoxFit.contain, rad: 100,),
                  ),
                  SizedBox(height: 3.h),
                  Flexible(
                    child: Styles.text('Title will be here ', maxLines: 2, textAlign: TextAlign.center, size: 10,),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
