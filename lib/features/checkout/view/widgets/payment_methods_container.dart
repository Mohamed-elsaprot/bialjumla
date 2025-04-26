import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_radio_tile.dart';
import 'custom_continer.dart';

class PaymentMethodsContainer extends StatefulWidget {
  const PaymentMethodsContainer({Key? key}) : super(key: key);

  @override
  State<PaymentMethodsContainer> createState() => _PaymentMethodsContainerState();
}

class _PaymentMethodsContainerState extends State<PaymentMethodsContainer> {

  num gVal = 1;
  List images = [Images.cash,Images.visa];
  List<String> methods = [Texts.cash,Texts.visa];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        body:[
          Row(
            children: [
              Icon(Icons.attach_money_outlined,color: Styles.primary,),
              SizedBox(width: 10.w,),
              Styles.text(Texts.paymentMethod.tr(), size: 14)
            ],
          ),
          Divider(endIndent: 5, indent: 5, height: 20.h,),
          Column(
            children: List.generate(2, (index) => CustomRadioTiles(
              title: methods[index].tr(),
              subTitle: 'Sub Title will be here',
              image: images[index],
              val: index, gVal: gVal,
              fun: (x){
                gVal = x!;
                setState(() {});
              },
            ),
            ),
          )
        ]
    );
  }
}
