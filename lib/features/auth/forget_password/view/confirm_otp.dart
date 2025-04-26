import 'package:bialjumla/core/design/app_styles.dart';
import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/design/appTexts.dart';
import '../../../../core/general_widgets/custom_button.dart';

class ConfirmOtp extends StatelessWidget {
  const ConfirmOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15.w,right: 15.w,bottom: 40.h),
        child: Column(
          children: [
            SizedBox(height: 100.h,),
            Lottie.asset('assets/animations/otp.json',height: 250.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Styles.subTitle('Verification code sent to ',color: Colors.black,size: 12),
                Styles.subTitle('+20*******272',color: Styles.primary,size: 12),
              ],
            ),
            SizedBox(height: 20.h,),
            OtpTextField(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              numberOfFields: 4,
              enabledBorderColor: Styles.primary,focusedBorderColor: Styles.primary,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode){
                print('Done $verificationCode');
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            SizedBox(height: 40.h,),
            SizedBox(
                width: double.infinity,
                child: CustomButton(fun: (){}, title: Texts.confirm.tr())
            )

          ],
        ),
      ),
    );
  }
}
