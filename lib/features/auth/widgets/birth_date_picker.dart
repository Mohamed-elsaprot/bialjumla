import 'package:bialjumla/core/general_widgets/custom_textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_styles.dart';

class BirthDatePicker extends StatefulWidget {
  const BirthDatePicker({super.key});

  @override
  State<BirthDatePicker> createState() => _BirthDatePickerState();
}

class _BirthDatePickerState extends State<BirthDatePicker> {
  DateTime selectedDate = DateTime.now();
  var con = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: CustomTextField(
        controller: con,readOnly: true,
        hint: 'Date of birth',
        onTap: _showDatePicker,
      ),
    );
  }

  void _showDatePicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Stack(
        children: [
          Container(
            height: 300.h,
            color: Colors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime(2015),
              maximumYear: 2015,
              onDateTimeChanged: (DateTime newDate) {
                setState(() {
                  selectedDate = newDate;
                  con.text = '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}';
                });
              },
            ),
          ),
          CupertinoButton(
            child: Styles.text('Done'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }

}