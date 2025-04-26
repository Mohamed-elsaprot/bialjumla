import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/app_styles.dart';
import 'package:bialjumla/core/general_widgets/custom_textField.dart';
import 'package:bialjumla/features/auth/widgets/agreement_terms_container.dart';
import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:bialjumla/features/auth/widgets/country_picker.dart';
import 'package:bialjumla/features/auth/widgets/gender_radio.dart';
import 'package:bialjumla/features/auth/widgets/sign_up_actions_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/birth_date_picker.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  GenderRow(),
                  Row(
                    children: [
                      Expanded(child: CustomTextField(controller: TextEditingController(),hint: Texts.firstName.tr(),)),
                      SizedBox(width: 12.w,),
                      Expanded(child: CustomTextField(controller: TextEditingController(),hint: Texts.lastName.tr())),
                    ],
                  ),
                  SizedBox(height: 18.h,),
                  CustomTextField(controller: TextEditingController(),hint: Texts.emailAddress.tr(),textInputType: TextInputType.emailAddress,),
                  SizedBox(height: 18.h,),
                  Row(
                    children: [
                      Expanded(flex: 3,child: CustomCountryPicker()),
                      SizedBox(width: 12.w,),
                      Expanded(flex: 10,child: CustomTextField(controller: TextEditingController(),hint: Texts.phoneNum.tr(),textInputType: TextInputType.phone,)),
                    ],
                  ),
                  SizedBox(height: 18.h,),
                  CustomTextField(controller: TextEditingController(),hint: Texts.password.tr(),suffixIcon: Icon(Icons.visibility_off_outlined),textInputType: TextInputType.visiblePassword,),
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      Icon(Icons.error,color: Colors.black54,size: 20,),
                      SizedBox(width: 8.w,),
                      SizedBox(
                          width: 350.w,
                          child: Styles.subTitle('Create a password with 8 character, including both upper and lower case letters, and at least one number.',size: 12,maxLines: 3))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.h,),
            BirthDatePicker(),
            SizedBox(height: 18.h,),
            AgreementTermsContainer(),
            SignUpActionsContainer()
          ],
        ),
      ),
    );
  }
}
