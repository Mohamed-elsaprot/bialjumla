import 'package:flutter/material.dart';

import '../../../core/design/app_styles.dart';

class GenderRow extends StatefulWidget {
  const GenderRow({super.key, });


  @override
  State<GenderRow> createState() => _GenderRowState();
}

class _GenderRowState extends State<GenderRow> {
  int gVal=0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Row(
          children: [
            Radio(value: 1, groupValue: gVal, onChanged: (x)=>setState(()=> gVal = x!),activeColor: Styles.primary,),
            Styles.text('Mr')
          ],
        )),
        Expanded(child: Row(
          children: [
            Radio(value: 2, groupValue: gVal, onChanged: (x)=>setState(()=> gVal = x!),activeColor: Styles.primary,),
            Styles.text('Mrs')
          ],
        )),
      ],
    );
  }
}
