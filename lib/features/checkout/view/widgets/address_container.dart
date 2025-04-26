import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/design/fun_widgets.dart';
import '../../../../core/general_widgets/custom_button.dart';
import '../../all_old_address_screen/view/old_locations_sheet.dart';
import 'custom_continer.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        body: [
          Row(
            children: [
              Icon(Icons.location_on_rounded,color: Styles.primary,),
              SizedBox(width: 10.w,),
              Styles.text(Texts.deliveryAddress.tr(), size: 14)
            ],
          ),
          Divider(endIndent: 5, indent: 5, height: 20.h,),
          true? Styles.text('${'country'}, ${'city'}', size: 14):
          Styles.text('Not Chosen Yet', size: 14),
          SizedBox(height: 4.h,),
          if(true)Styles.subTitle('${'neighborhood'}, homeAddress', size: 13),
          SizedBox(height: 10.h,),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              fun: () {
                bottomSheet(context,AddNewLocationSheet());
              },
              textSize: 13, rad: 30, title: Texts.changeLocation.tr(),
              backGroundColor: Colors.grey.shade200,
              textColor: Colors.black,
            ),
          )
        ]
    );
  }
}
