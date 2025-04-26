import 'package:bialjumla/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/design/fun_widgets.dart';

class CircleItemsRow extends StatelessWidget {
  const CircleItemsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 6,mainAxisExtent: 140.h),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context,index){
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
                radius: 42.sp,backgroundColor: Colors.white,
                child: cachedImage(
                    vegetables,
                    boxFit: BoxFit.contain,rad: 100)
            ),
            SizedBox(height: 6.h,),
            Flexible(child: Styles.text('Title will be here ',maxLines: 2,textAlign: TextAlign.center,size: 12))
          ],
        );
      },
    );
  }
}
