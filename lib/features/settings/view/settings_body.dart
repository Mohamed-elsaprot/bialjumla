import 'package:bialjumla/const.dart';
import 'package:bialjumla/core/design/app_styles.dart';
import 'package:bialjumla/core/router.dart';
import 'package:bialjumla/features/settings/view/widgets/custom_tile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/design/appTexts.dart';
import '../../../core/design/fun_widgets.dart';
import '../../../core/design/images.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    context.locale;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.white
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 8.h),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50, width: 100.w,
                          child: Image.asset(Images.logo,fit: BoxFit.fill),
                        ),
                        SizedBox(width: 15.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Styles.text('store_name',size: 13),
                            SizedBox(height: 8.h,),
                            SizedBox(width: MediaQuery.of(context).size.width*.55, child: Styles.subTitle('store_description'??'Description',size: 11)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  CustomTile(fun: ()=> AppRouter.router.push(AppRouter.lang), title: Texts.lang.tr(), icon: Icons.language),
                  // CustomTile(fun: (){}, title: Texts.buyAgain.tr(), icon: Icons.shopping_cart_checkout_rounded),
                  CustomTile(fun: ()=> AppRouter.router.push(AppRouter.favourites), title: Texts.favourites.tr(), icon: Icons.favorite_border),
                  CustomTile(fun: ()async{
                    final Uri whatsApp = Uri.parse('https://wa.me/${01040478409}');
                    await canLaunchUrl(whatsApp)? launchUrl(whatsApp):errorDialog(context: context, message: 'Something went wrong, Please try again later...');

                  }, title: Texts.customerServices.tr(), icon: Icons.support_agent),
                  CustomTile(fun: ()=> AppRouter.router.push(AppRouter.contentScreen,extra: {'content': htmlExample,'title': Texts.aboutUs.tr()}), title: Texts.aboutUs.tr(), icon: Icons.error_outline),
                  CustomTile(fun: ()=> AppRouter.router.push(AppRouter.contentScreen,extra: {'content': htmlExample,'title': Texts.termsAndCon.tr()}), title: Texts.termsAndCon.tr(), icon: Icons.list),
                  CustomTile(fun: ()=> AppRouter.router.push(AppRouter.contentScreen,extra: {'content': htmlExample,'title': Texts.privacyAndPolicy.tr()}), title: Texts.privacyAndPolicy.tr(), icon: Icons.lock_outline),
                  CustomTile(fun: (){}, title: Texts.deleteAccount.tr(),textColor: Colors.red, icon: Icons.delete_outline,iconColor: Colors.red,),
                  CustomTile(fun: (){}, title: Texts.logOut.tr(), textColor: Colors.red, icon: Icons.login,iconColor: Colors.red,withDivider: false,),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
