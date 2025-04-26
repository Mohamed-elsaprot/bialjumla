import 'package:bialjumla/core/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../const.dart';
import '../../../../core/design/app_styles.dart';


class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key, required this.content, required this.title, });
  final String content, title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(onTap: ()=>AppRouter.router.pop(context),child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),),
        title: Styles.text(title, color: Colors.white,size: 22, fontWeight: FontWeight.w900),
        centerTitle: true,
        backgroundColor: Styles.primary,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical:15.h),
          child: SizedBox(
              width: double.infinity,
              child: HtmlWidget( content,textStyle: const TextStyle(fontFamily: fontFamily,),)
          )),
    );
  }
}