import 'package:bialjumla/core/design/appTexts.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const.dart';
import '../../../core/general_widgets/custom_textField.dart';

class CustomCountryPicker extends StatefulWidget {
  const CustomCountryPicker({super.key});

  @override
  State<CustomCountryPicker> createState() => _CustomCountryPickerState();
}

class _CustomCountryPickerState extends State<CustomCountryPicker> {
  late TextEditingController con;
  @override
  void initState() {
    con = TextEditingController();
    con.text = '🇰🇼 +965';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: con,readOnly: true,
      textAlign: TextAlign.center,
      textStyle: TextStyle(fontSize: 14.sp),
      onTap: (){
        showCountryPicker(
          context: context,
          countryListTheme: CountryListThemeData(
            flagSize: 25,
            backgroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 16, color: Colors.blueGrey),
            bottomSheetHeight: 500,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
            inputDecoration: InputDecoration(
              labelText: Texts.search.tr(),
              prefixIcon: const Icon(Icons.search),
              errorBorder: border().copyWith(borderRadius: BorderRadius.circular(14.r)),
              border: border().copyWith(borderRadius: BorderRadius.circular(14.r)),
              focusedBorder: border().copyWith(borderRadius: BorderRadius.circular(14.r)),
              enabledBorder: border().copyWith(borderRadius: BorderRadius.circular(14.r)),
            ),
          ),
          favorite: ['KW'],
          countryFilter: arabCountryCodes,
          showPhoneCode: true,
          onSelect: (Country country) {
            con.text=country.flagEmoji;
            con.text+= ' +${country.phoneCode}';
          },
        );
      },
    );
  }
}
