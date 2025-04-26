import 'package:bialjumla/core/design/app_styles.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

abstract class NavigationItem {
  static CustomNavigationBarItem item({required IconData icon,required String title,required bool selected}){
    return CustomNavigationBarItem(
      icon: Center(
        child: Icon(icon,size: 24,color: Colors.black54,),
      ),
      title: FittedBox(child: Styles.text(title,size: 14,color: selected? Styles.primary:null)),
      selectedIcon: Center(
        child: Icon(icon,size: 24,color: Styles.primary,),
      ),
    );
  }
}