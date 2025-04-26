import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/general_widgets/fav_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../design/app_styles.dart';

class ItemPriceRow extends StatelessWidget {
  const ItemPriceRow({super.key, });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100.w,
          child: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                Styles.text('${150}',size: 18,fontWeight: FontWeight.bold),
                SizedBox(width: 2.w,),
                SizedBox(
                  height: 20.h,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      children: [
                        Styles.text('.95',size: 14,fontWeight: FontWeight.bold),
                        Styles.text(Texts.currency.tr(),size: 14,fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        FavIcon()
      ],
    );
  }
}

