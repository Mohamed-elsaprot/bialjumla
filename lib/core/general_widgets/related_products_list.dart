import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../design/app_styles.dart';
import 'item_card.dart';

class RelatedProductsList extends StatelessWidget {
  const RelatedProductsList({Key? key, required this.relatedList}) : super(key: key);
  final List relatedList;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
            child: Styles.text('Related Products',size: 16,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h,),
          SizedBox(
            height: 280.h,
            child: ListView.separated(
              itemCount: 8,
              separatorBuilder: (context,index)=> SizedBox(width: 10.w,),
              itemBuilder: (context,index)=> SizedBox(width: 150.w,child: ItemCard(index: index,)),
              scrollDirection: Axis.horizontal,
            ),
          ),
          // SizedBox(
          //   height: 300.h,
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: List.generate(8, (index)=> Container(
          //         margin: EdgeInsets.symmetric(horizontal: 6.w),
          //         child: SizedBox(
          //             width: 150.w,
          //             child: ItemCard()),
          //       )),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
