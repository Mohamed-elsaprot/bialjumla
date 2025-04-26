import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/app_styles.dart';
import 'package:bialjumla/core/design/fun_widgets.dart';
import 'package:bialjumla/core/design/images.dart';
import 'package:bialjumla/core/general_widgets/custom_button.dart';
import 'package:bialjumla/core/general_widgets/custom_textField.dart';
import 'package:bialjumla/core/router.dart';
import 'package:bialjumla/features/auth/forget_password/view/forget_password.dart';
import 'package:bialjumla/features/auth/sign_up/view/sign_up.dart';
import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:bialjumla/features/auth/widgets/easy_access_row.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
            child: Image.asset(Images.loginBackground,fit: BoxFit.cover,),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('assets/animations/auth.json',height: 150.h),
                SizedBox(height: 10.h,),
                CustomTextField(
                  controller: TextEditingController(),
                  fillColor: Colors.white,textInputType: TextInputType.emailAddress,
                  title: Texts.emailAddress.tr(),
                ),
                SizedBox(height: 20.h,),
                CustomTextField(
                  controller: TextEditingController(),
                  fillColor: Colors.white,textInputType: TextInputType.visiblePassword,
                  obscureText: true, title: Texts.password.tr(),
                  suffixIcon: Icon(Icons.visibility_outlined,color: Colors.black38,),
                ),
                SizedBox(height: 8.h,),
                Align(alignment: AlignmentDirectional.centerStart,child: GestureDetector(
                    onTap: (){
                      AppRouter.router.pop(context);
                      Future.delayed(Duration(milliseconds: 300),()=> bottomSheet(context, ForgetPassword()));
                    },
                    child: Styles.text(Texts.forgetPassword.tr(),fontWeight: FontWeight.w200,size: 12,))
                ),
                SizedBox(height: 20.h,),
                SizedBox(width: double.infinity,child: CustomButton(fun: (){}, title: Texts.continueText.tr())),
                SizedBox(height: 15.h,),
                Row(
                  children: [
                    Expanded(child: Divider(endIndent: 5,color: Colors.black12,)),
                    Styles.text(Texts.or.tr(),fontWeight: FontWeight.bold),
                    Expanded(child: Divider(indent: 5,color: Colors.black12,)),
                  ],
                ),
                SizedBox(height: 15.h,),
                EasyAccessRow(),
                SizedBox(height: 15.h,),
                Styles.subTitle(Texts.newToBialjumla.tr(),fontWeight: FontWeight.w200,size: 14),
                GestureDetector(
                    onTap: (){
                      AppRouter.router.pop(context);
                      Future.delayed(Duration(microseconds: 400),()=> bottomSheet(context, SignUp()));
                    },
                    child: Styles.text(Texts.signUpForNewAccount.tr(),fontWeight: FontWeight.w900,color: Styles.primary,size: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
