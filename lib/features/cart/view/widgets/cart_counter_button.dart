import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';

class CartCounterButton extends StatefulWidget {
  const CartCounterButton({super.key});

  @override
  State<CartCounterButton> createState() => _CartCounterButtonState();
}

class _CartCounterButtonState extends State<CartCounterButton> {

  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if(qty!=1)qty--;
            setState(() {});
          },
          child: Container(
            height: 30.w,width: 30.w,
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Styles.primary.withOpacity(.1)
            ),
            child: qty==1?const Icon(CupertinoIcons.delete,color: Styles.primary,size: 16,) :Text('-', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900,color: Styles.primary),),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '$qty Kg',
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: ()async{
            qty++;
            setState(() {});
          },
          child: Container(
            height: 30.w,width: 30.w,
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Styles.primary.withOpacity(.1)
            ),
            child:Text('+', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500,color: Styles.primary),),
          ),
        )
      ],
    );
  }
}
