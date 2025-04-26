import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_styles.dart';

class EasyAccessContainer extends StatelessWidget {
  const EasyAccessContainer({super.key, required this.image, required this.fun});
  final String image;
  final void Function() fun;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Styles.primary.withOpacity(.075)
          ),
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 14.h),
          child: Image.asset(image,height: 22.h,),
        ),
      ),
    );
  }
}
