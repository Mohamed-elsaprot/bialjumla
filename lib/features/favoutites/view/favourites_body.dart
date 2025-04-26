import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/general_widgets/item_card.dart';

class FavouritesBody extends StatefulWidget {
  const FavouritesBody({super.key});

  @override
  State<FavouritesBody> createState() => _FavouritesBodyState();
}

class _FavouritesBodyState extends State<FavouritesBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,title: Texts.favourites.tr()),
      body: GridView.builder(
        itemCount: 20,padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 12.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,mainAxisExtent: 280.h,
            mainAxisSpacing: 12.h,crossAxisSpacing: 14.w
        ),
        itemBuilder: (context, index) => ItemCard(index: index),
      ),
    );
  }
}
