import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/design/app_styles.dart';
import 'package:bialjumla/features/navigation_screen/manager/navigation_screen_manager.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class CartItemNav {
  static CustomNavigationBarItem cartTab(BuildContext context){
    var navCubit = BlocProvider.of<NavigationScreenCubit>(context);
    return CustomNavigationBarItem(
      icon:  Center(
        child: Tab(
          // text: textsMap['mobile_cart'],
          icon: true
              ? badges.Badge(
              badgeContent: Text(12.toString(), style: const TextStyle(color: Colors.white, fontSize: 14),),
              position: badges.BadgePosition.custom(start: context.locale.languageCode=='en'?14:-14, bottom: 10,),
              badgeStyle: badges.BadgeStyle(
                padding: EdgeInsets.all(4.4.sp),
                badgeColor: Styles.primary,
              ),
              child: const Icon(Icons.shopping_cart_outlined,size: 24,))
              : const Icon(Icons.shopping_cart_outlined,size: 24),
        ),
      ),
      title: Styles.text(Texts.cart.tr(),size: 14,color: navCubit.index==2? Styles.primary:null)
    );
  }
}