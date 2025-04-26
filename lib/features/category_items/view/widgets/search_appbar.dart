import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/appTexts.dart';
import '../../../../core/general_widgets/custom_textField.dart';
import '../../../../core/router.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => AppRouter.router.pop(context),
          child: Container(
            color: Colors.transparent,
            child: Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: CustomTextField(
            height: 50.h,
            controller: TextEditingController(),
            prefixIcon: Icon(CupertinoIcons.search),
            fillColor: Colors.white,
            hint: Texts.searchForProducts.tr(),
            inputBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.black, width: .1),
            ),
          ),
        ),
      ],
    );
  }
}
