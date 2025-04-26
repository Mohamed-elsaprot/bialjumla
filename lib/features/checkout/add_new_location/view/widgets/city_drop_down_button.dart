import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/design/app_styles.dart';
import '../../../../../core/design/fun_widgets.dart';
import '../../../../../core/design/images.dart';

class CityDropDownButton extends StatelessWidget {
  const CityDropDownButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Styles.text(Texts.city.tr(),size: 12),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(Images.requiredStar,width: 14,),
              )
            ],
          ),
          SizedBox(height: 4.h,),
          DropdownButtonFormField(
            dropdownColor: Colors.white,
            validator: (x){},
            decoration: dropDownButtonBorderDecoration(),
            menuMaxHeight: 200.h,
            borderRadius: BorderRadius.circular(20),
            items: List.generate(5, (index) => DropdownMenuItem(
              value: index,
              child: Styles.text('index.label'??'',size: 14),
            ),
            ),
            onChanged: (x){},
          ),
          SizedBox(height: 4.h,)
        ],
      ),
    );
  }
}
