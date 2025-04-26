import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/general_widgets/custom_button.dart';

class SaveLocationButton extends StatelessWidget {
  const SaveLocationButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding:
      EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h, top: 10.h),
      child: CustomButton(
        title: Texts.saveAddress.tr(),
        fun: () {},
        rad: 50,
      ),
    );
  }
}
