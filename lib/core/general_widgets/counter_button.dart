import 'package:bialjumla/core/design/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({Key? key}) : super(key: key);

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {

  int qty = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      alignment: AlignmentDirectional.centerStart,
        firstChild: Container(
          decoration: BoxDecoration(
              color: Styles.primary,
              borderRadius: BorderRadius.circular(20.r)
          ),
          margin: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  qty--;
                  setState(() {});
                },
                child: Container(
                  height: 35.w,width: 35.w,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:  qty==1?Colors.red.withOpacity(.07): Styles.primary
                  ),
                  child: qty==1?const Icon(CupertinoIcons.delete,color: Colors.white,size: 16,) :Text('-', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900,color: Colors.white),),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 35.w,width: 45.w,
                alignment: Alignment.center,
                child: FittedBox(
                  child: Text(
                    qty.toString(),
                    style: TextStyle(fontSize: 16.sp, color: Colors.white,fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  qty++;
                  setState(() {});
                },
                child: Container(
                  height: 35.w,width: 35.w,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Styles.primary
                  ),
                  child:Text('+', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                ),
              )
            ],
          ),
        ),
        secondChild: Padding(
          padding:  EdgeInsetsDirectional.only(end: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: ()async{
                  qty++;
                  setState(() {});
                },
                child: Container(
                  height: 35.w,width: 35.w,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Styles.primary
                  ),
                  child:Text('+', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
        crossFadeState: qty==0?CrossFadeState.showSecond:CrossFadeState.showFirst,
        duration: Duration(milliseconds: 150));
  }
}
