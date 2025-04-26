import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/general_widgets/item_card.dart';
import 'filter_sort_action_row.dart';

class ProductsGridview extends StatelessWidget {
  const ProductsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: FilterSortActionRow(),
        ),
        body: GridView.builder(
          itemCount: 20,padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 6.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,mainAxisExtent: 280.h,
              mainAxisSpacing: 8.h,crossAxisSpacing: 8.w
          ),
          itemBuilder: (context, index) => ItemCard(index: index),
        ),
      ),
    );
  }
}
