import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/design/images.dart';

class CodeContainer extends StatelessWidget {
  const CodeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffecd6bb),
          borderRadius: BorderRadius.circular(14.r)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
        child: Row(
          children: [
            Image.asset(Images.balon,width: 40.w,),
            SizedBox(width: 30.w,),
            Expanded(child: Text('First Order? Use code HELLO15 to get 15% OFF - Up to 150 EGP',maxLines: 2)),
            SizedBox(width: 15.w,),
            Icon(Icons.copy_rounded,color: Styles.primary,size: 30.sp,)
          ],
        ),
      ),
    );
  }
}
