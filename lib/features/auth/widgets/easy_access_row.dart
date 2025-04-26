import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/images.dart';
import 'easy_access_container.dart';

class EasyAccessRow extends StatelessWidget {
  const EasyAccessRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        EasyAccessContainer(image: Images.facebook, fun: () {  },),
        SizedBox(width: 10.w,),
        EasyAccessContainer(image: Images.google,fun: () {  }),
        SizedBox(width: 10.w,),
        EasyAccessContainer(image: Images.apple,fun: () {  }),
      ],
    );
  }
}
