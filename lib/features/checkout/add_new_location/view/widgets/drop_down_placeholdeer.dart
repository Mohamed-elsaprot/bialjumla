import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/design/fun_widgets.dart';

class DropDownPlaceHolder extends StatelessWidget {
  const DropDownPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: (x){},
      decoration: dropDownButtonBorderDecoration(),
      menuMaxHeight: 250.h,
      items: [],
      onChanged: (x){},
    );
  }
}
