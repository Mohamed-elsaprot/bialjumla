import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/appTexts.dart';
import '../../../../core/design/app_styles.dart';
import '../../../../core/design/images.dart';
import '../../../../core/general_widgets/custom_button.dart';
import '../../../navigation_screen/manager/navigation_screen_manager.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    var navCubit = BlocProvider.of<NavigationScreenCubit>(context);
    return Column(
      children: [
        Center(child: Image.asset(Images.emptyCart,width: 200.w,)),
        SizedBox(height: 20.h,),
        Styles.text(Texts.lookingForSomething.tr(),fontWeight: FontWeight.w900),
        SizedBox(height: 3.h,),
        Styles.text(Texts.addYourFavouriteItems.tr(),size: 15),
        SizedBox(height: 60.h,),
        CustomButton(
          fun: ()=> navCubit.setIndex(0),
          title: 'Start shopping',rad: 6,backGroundColor: Color(0xffde021e),
          padding: EdgeInsets.symmetric(horizontal: 30.w),
        ),
      ],
    );
  }
}
