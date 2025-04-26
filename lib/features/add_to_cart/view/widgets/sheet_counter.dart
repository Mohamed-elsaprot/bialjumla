import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SheetCounter extends StatefulWidget {
  const SheetCounter({Key? key,}) : super(key: key);
  @override
  State<SheetCounter> createState() => _SheetCounterState();
}

class _SheetCounterState extends State<SheetCounter> {
  num qty = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 35.w,width: 35.w,
          child: TextButton(
            style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.grey.shade100,),
            onPressed: () async {
              setState(() {
                if(qty!=1) qty--;
              });
            },
            child: Text('-', style: TextStyle(fontSize: 20.sp, color: Colors.black),),
          ),
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300)
            ),
            height: 35.w,width: 45.w,alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 6,),
            padding: const EdgeInsets.all(2),
            child: FittedBox(fit: BoxFit.scaleDown,child: Text(qty.toString(),style: const TextStyle(fontWeight: FontWeight.w600),))),
        SizedBox(
          height: 35.w,width: 35.w,
          child: TextButton(
              style: ElevatedButton.styleFrom(foregroundColor: Colors.white10,backgroundColor: Colors.grey.shade100,),
              onPressed:() async {
                setState(() {
                  qty++;
                });
              },
              child:Text('+', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w400, color: Colors.black,),)),
        ),
      ],
    );
  }
}
