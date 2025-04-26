import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../design/app_styles.dart';

class SmallCategoriesHomeList extends StatefulWidget {
  const SmallCategoriesHomeList({super.key});

  @override
  State<SmallCategoriesHomeList> createState() => _SmallCategoriesHomeListState();
}

class _SmallCategoriesHomeListState extends State<SmallCategoriesHomeList> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Styles.text('Everyday Essential!', fontWeight: FontWeight.w700),
        SizedBox(height: 20.h,),
        SizedBox(
          height: 25.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=> GestureDetector(
              onTap: ()=>setState(()=> selected=index),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: selected ==index? Colors.black54:Colors.black12)
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                alignment: Alignment.center,
                child: Styles.text('Category Title $index',fontWeight: FontWeight.bold,size: 12,color: Colors.black87),
              ),
            ),
            separatorBuilder: (context,index)=> SizedBox(width: 12.w,),
            itemCount: 8,
          ),
        ),
      ],
    );
  }
}
