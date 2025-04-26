import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/fun_widgets.dart';
import 'package:bialjumla/features/auth/log_in/view/log_in.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/design/images.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          bottomSheet(context, SizedBox(child: LogIn()));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Styles.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.symmetric(vertical: 10.h)
        ),
        child: SizedBox(
          height: 18.h,
          child: AnimatedCrossFade(
            crossFadeState: true? CrossFadeState.showFirst:CrossFadeState.showSecond,
            secondChild: const SizedBox(),
            firstChild: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Images.shoppingBag,width: 15.w,color: Colors.white,),
                  SizedBox(width: 8.w,),
                  Styles.text(Texts.addToCart.tr(),color: Colors.white,size: 15,),
                  SizedBox(
                    width: 70.w,
                    child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child:  Styles.text('(${true? (50): (80)} DK)', color: Colors.white,size: 15)
                    ),
                  ),
                ],
              ),
            ), duration: const Duration(milliseconds: 100),
          ),
        )
    );
  }
}
