import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/features/navigation_screen/view/widget/cart_item.dart';
import 'package:bialjumla/features/navigation_screen/view/widget/nav_item.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../const.dart';
import '../manager/navigation_screen_manager.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    context.locale;

    var navCubit = BlocProvider.of<NavigationScreenCubit>(context);
    return BlocConsumer<NavigationScreenCubit,NavigationScreenState>(
      builder: (context,state){
        return Scaffold(
          body: tabsList[navCubit.index],
          bottomNavigationBar: Container(
            color: Colors.white,
            padding: EdgeInsets.only(bottom: 30.h,top: 4.h,left: 8.w,right: 8.w),
            // margin: EdgeInsets.symmetric(horizontal: 6.w),
            child: CustomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: navCubit.index,
              onTap: (x)async{
                navCubit.setIndex(x);
              },
              iconSize: 55.sp,
              // selectedColor: Colors.white,
              strokeColor: Colors.transparent,
              items: [
                NavigationItem.item(selected: navCubit.index==0,icon: Icons.home_filled, title: Texts.home.tr()),
                NavigationItem.item(selected: navCubit.index==1,icon: Icons.manage_search, title: Texts.categories.tr()),
                CartItemNav.cartTab(context),
                // NavigationItem.item(selected: navCubit.index==3,icon: Icons.equalizer, title: 'Deals'),
                NavigationItem.item(selected: navCubit.index==4,icon: Icons.more_horiz, title: Texts.more.tr()),
              ],
            ),
          ),
        );
      },
      listener: (context,state){
        if(state is NavigationScreenReset){
          _tabController.index= navCubit.index;
        }
      },
    );
  }
}
