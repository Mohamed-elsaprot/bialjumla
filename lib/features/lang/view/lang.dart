import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/general_widgets/custom_button.dart';
import 'package:bialjumla/core/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_styles.dart';

class Lang extends StatefulWidget {
  const Lang({super.key});

  @override
  State<Lang> createState() => _LangState();
}

class _LangState extends State<Lang> {
  String selectedLang='en', selectedText = 'en';
  List<String> langLetters = ['ar','en'];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.locale;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,centerTitle: true,
          title: Styles.text(Texts.lang.tr(), size: 20,fontWeight: FontWeight.bold),
          leading: GestureDetector(onTap: ()=> AppRouter.router.pop(context),child: Icon(Icons.arrow_back_ios_rounded),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Styles.text(Texts.youAreIn.tr(),fontWeight: FontWeight.bold,size: 20),
            ),
            SizedBox(height: 8.h,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              child: Row(
                children: [
                  Styles.text(selectedText.tr(),fontWeight: FontWeight.bold),
                  Spacer(),
                  Icon(Icons.check,color: Styles.primary,)
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Styles.text(Texts.chooseYourPreferredLang.tr(),fontWeight: FontWeight.bold,size: 20),
            ),
            SizedBox(height: 10.h,),
            Container(
              color: Colors.white,
              child: Column(
                children: List.generate(langLetters.length, (index)=>Column(
                  children: [
                    RadioListTile(
                      activeColor: Styles.primary,
                      value: langLetters[index],
                      groupValue: selectedLang,
                      onChanged: (x) async {
                        selectedLang = x!;
                        setState(() {});
                      },
                      title: Styles.text(langLetters[index].tr()),
                    ),
                    if(index!=1)Divider(color: Colors.black12,indent: 25.w,endIndent: 25.w,)
                  ],
                )),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 30.h),
          width: double.infinity,
          child: CustomButton(fun: (){
            context.setLocale(Locale(selectedLang));
            selectedText = selectedLang;
            setState(() {});
          }, title: Texts.save.tr()),
        ),
    );
  }
}