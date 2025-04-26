import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../design/app_styles.dart';

class RemovedPrice extends StatelessWidget {
  const RemovedPrice({Key? key, required this.removedPrice, this.textSize=10}) : super(key: key);
  final num removedPrice;
  final double? textSize;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Styles.subTitle('DK $removedPrice',size: textSize,textDecoration: TextDecoration.lineThrough,),
          SizedBox(width: 4.w,),
          Styles.subTitle('33% OFF',color: Colors.red)
        ],
      ),
    );
  }
}
