import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_button.dart';

class ActivateCouponButton extends StatefulWidget {
  const ActivateCouponButton({super.key});

  @override
  State<ActivateCouponButton> createState() => _ActivateCouponButtonState();
}

class _ActivateCouponButtonState extends State<ActivateCouponButton> {
  bool activated = false;
  @override
  Widget build(BuildContext context) {
    return CustomButton(fun: (){
      activated = !activated;
      setState(() {});
    }, title:'',titleWidget: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(activated)const Icon(Icons.check_circle,color: Colors.white,size: 18,),
        if(activated)const SizedBox(width: 10,),
        Styles.text(activated?Texts.activated.tr():Texts.activate.tr(),color: Colors.white,size: 12),
      ],
    ),padding: const EdgeInsets.symmetric(horizontal: 10,),rad: 6,textSize: 12,backGroundColor: activated?Colors.green:Styles.primary,);
  }
}
