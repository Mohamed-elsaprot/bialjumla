import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const.dart';

abstract class Styles {
  static const Color primary = Color(0xff0e5aa7);
  static Color scaffoldColor = Color(0xfff4f4f4);

  static Text text(String t,
      {double? size = 16,
      Color? color = Colors.black,
      FontWeight? fontWeight = FontWeight.w500,
      TextOverflow? overflow,
      int? maxLines,
      TextDecoration? decoration,
      TextAlign? textAlign = TextAlign.start}) {
    return Text(
      t,
      style: TextStyle(
        decoration: decoration,
          fontSize: size!.sp,
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily
      ),
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

  static Text subTitle(String t,{double? size=10,Color color=Colors.black38,FontWeight fontWeight=FontWeight.w600,TextOverflow? overflow,TextAlign? textAlign=TextAlign.start,TextDecoration? textDecoration,int?maxLines,}){
    return Text(t,maxLines: maxLines,style: TextStyle(fontSize: size!.sp,fontWeight: fontWeight,color: color,fontFamily: fontFamily,decoration: textDecoration,decorationColor: color),overflow: overflow,textAlign: textAlign,);

  }
}
