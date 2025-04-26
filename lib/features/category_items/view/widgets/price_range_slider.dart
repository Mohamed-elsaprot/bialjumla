import 'package:bialjumla/core/general_widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';

class PriceRangeSlider extends StatefulWidget {
  const PriceRangeSlider({super.key});

  @override
  State<PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  late RangeValues _currentRangeValues;
  late final TextEditingController con1, con2;
  double start =0, end = 1000;
  @override
  void initState() {
    _currentRangeValues = RangeValues(start, end);
    con1 = TextEditingController();
    con2 = TextEditingController();
    con1.text = start.toString();
    con2.text = end.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CustomTextField(
                onChange: (x) {
                  setState(() {
                    double? y = double.tryParse(x);
                    if(y != null && y >= 0) {
                      start = double.parse(x);
                      _currentRangeValues = RangeValues(start, end);
                    }
                  });
                },
                textAlign: TextAlign.center,
                controller: con1,
                height: 40.h, textStyle: TextStyle(fontSize: 14),
                textInputType: TextInputType.number,
              ),
            ),
            Expanded(flex: 4, child: SizedBox()),
            Expanded(
              flex: 2,
              child: CustomTextField(
                onChange: (x) {
                  setState(() {
                    double? y = double.tryParse(x);
                    if(y != null && y<= 1000) {
                      end = double.parse(x);
                      _currentRangeValues = RangeValues(start, end);
                    }
                  });
                },
                textAlign: TextAlign.center,
                controller: con2,
                height: 40.h, textStyle: TextStyle(fontSize: 14),
                textInputType: TextInputType.number,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h,),
        RangeSlider(
          onChanged: (x) {
            setState(() {
              _currentRangeValues = x;
              con1.text = x.start.ceil().toString();
              con2.text = x.end.ceil().toString();
            });
          },
          min: 0,
          max: 1000,
          activeColor: Styles.primary,
          values: _currentRangeValues,
        ),
      ],
    );
  }
}
