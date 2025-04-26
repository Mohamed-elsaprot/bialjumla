import 'package:bialjumla/core/design/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../design/images.dart';
import '../router.dart';

AppBar customAppBar(BuildContext context, {String? title,Color? color,Color? textColor}){
  return AppBar(
    centerTitle: true,toolbarHeight: 80.h,
    backgroundColor: color??Styles.primary,
      elevation: 0,scrolledUnderElevation: 0,
    leading: GestureDetector(
        onTap: ()=> AppRouter.router.pop(context),
        child: Container(
            color: Colors.transparent,
            child:  Icon(Icons.arrow_back_ios_rounded,color: textColor?? Colors.white,))),
    title: title==null?Image.asset(Images.logo,height: 80.h,):Styles.text(title,color: textColor??Colors.white,fontWeight: FontWeight.bold),
  );
}