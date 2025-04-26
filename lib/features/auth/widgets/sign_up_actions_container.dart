import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_styles.dart';
import '../../../core/design/fun_widgets.dart';
import '../../../core/general_widgets/custom_button.dart';
import '../../../core/router.dart';
import '../log_in/view/log_in.dart';

class SignUpActionsContainer extends StatelessWidget {
  const SignUpActionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
      child: Column(
        children: [
          SizedBox(width: double.infinity,child: CustomButton(fun: (){}, title: Texts.register.tr())),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Styles.text(Texts.alreadyHaveAccount.tr(),size: 15),
              GestureDetector(
                  onTap: ()async{
                    AppRouter.router.pop(context);
                    Future.delayed(Duration(microseconds: 400),()=> bottomSheet(context, LogIn()));

                  },
                  child: Styles.text(Texts.logIn.tr(),color: Styles.primary,fontWeight: FontWeight.w900,size: 15)),
            ],
          ),
        ],
      ),
    );
  }
}
