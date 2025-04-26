import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/design/app_styles.dart';
import '../../../../../core/design/fun_widgets.dart';
import '../../../add_new_location/view/add_new_location_sheet.dart';

class AddNewLocationContainer extends StatelessWidget {
  const AddNewLocationContainer({super.key,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        Navigator.pop(context);
        Future.delayed(
          const Duration(milliseconds: 200),() => bottomSheet(context, const AddNewLocationSheet()),);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade100
        ),
        padding: EdgeInsets.symmetric(vertical: 14.h,horizontal: 14.w),
        child: Row(
          children: [
            Icon(Icons.add_location_rounded),
            SizedBox(width: 12.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Styles.text(Texts.anotherAddress.tr(), size: 14),
                Styles.subTitle(Texts.addNewAddress.tr(), size: 11),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded,size: 20,),
          ],
        ),
      ),
    );
  }
}
