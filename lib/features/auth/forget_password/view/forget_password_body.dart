import 'package:bialjumla/core/design/fun_widgets.dart';
import 'package:bialjumla/core/general_widgets/custom_button.dart';
import 'package:bialjumla/core/router.dart';
import 'package:bialjumla/features/auth/forget_password/view/confirm_otp.dart';
import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/design/appTexts.dart';
import '../../../../core/general_widgets/custom_textField.dart';
import '../../widgets/country_picker.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15.w,right: 15.w,bottom: 40.h),
        child: Column(
          children: [
            SizedBox(height: 100.h,),
            Lottie.asset('assets/animations/forgetPassword.json',height: 250.h),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Expanded(flex: 3,child: CustomCountryPicker()),
                SizedBox(width: 12.w,),
                Expanded(flex: 10,child: CustomTextField(controller: TextEditingController(),hint: Texts.phoneNum.tr(),textInputType: TextInputType.phone,)),
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
                width: double.infinity,
                child: CustomButton(fun: (){
                  AppRouter.router.pop(context);
                  Future.delayed(Duration(milliseconds: 300),() => bottomSheet(context, ConfirmOtp()),);
                }, title: Texts.sendOtp.tr())
            )

          ],
        ),
      ),
    );
  }
}
