import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/general_widgets/custom_appbar.dart';

class SortSheet extends StatefulWidget {
  const SortSheet({super.key});

  @override
  State<SortSheet> createState() => _SortSheetState();
}

class _SortSheetState extends State<SortSheet> {
  num groupVal= -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(context,title: Texts.sort.tr(),color: Colors.transparent,textColor: Colors.black),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(3, (index)=> RadioListTile(
              activeColor: Styles.primary,
              value: index, groupValue: groupVal, onChanged: (x)=> setState(()=> groupVal =x!),
              title: Styles.text('Title $index',color: index==groupVal? Styles.primary:null,fontWeight: index==groupVal? FontWeight.bold: null),
            )),
          ),
        ),
      ),
    );
  }
}
