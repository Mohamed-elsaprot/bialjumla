import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/design/app_styles.dart';
import '../../../../../../core/design/images.dart';
import '../../../../../const.dart';

class CountryDropDownButton extends StatelessWidget {
  const CountryDropDownButton({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Styles.text(Texts.country.tr(),size: 12),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(Images.requiredStar,width: 14,),
              )
            ],
          ),
          SizedBox(height: 4.h,),
          DropdownButtonFormField(
            validator: (x){},
            dropdownColor: Colors.white,
            decoration: InputDecoration(
                errorStyle: const TextStyle(fontFamily: fontFamily),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.shade200)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.shade200)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.shade200)),
                errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.shade200))
              ),
            menuMaxHeight: 200.h,
            borderRadius: BorderRadius.circular(20),
              items: List.generate(5, (index) => DropdownMenuItem(
                  value: index,
                  child:Styles.text('index.label'??'',size: 14),
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
