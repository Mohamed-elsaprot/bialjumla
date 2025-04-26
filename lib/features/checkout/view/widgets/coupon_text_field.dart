import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../const.dart';
import '../../../../core/design/app_styles.dart';
import 'activate_coupon_button.dart';

class CouponTextField extends StatefulWidget {
  const CouponTextField({super.key, });

  @override
  State<CouponTextField> createState() => _CouponTextFieldState();
}

class _CouponTextFieldState extends State<CouponTextField> {
  late TextEditingController con;
  @override
  void initState() {
    con = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (x){setState(() {});},
      controller: con,
      cursorColor: Styles.primary,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,filled: true,
        prefixIcon: Icon(Icons.wallet_giftcard,color: Styles.primary,),
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 10,top: 4,bottom: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if(con.text.isNotEmpty)GestureDetector(
                  onTap: (){
                    con.text='';
                    setState(() {});
                  },
                  child: CircleAvatar(backgroundColor: Colors.grey.shade400,radius: 10,child: const Icon(Icons.close,size: 14,color: Colors.black,),)),
              const SizedBox(width: 8,),
              const ActivateCouponButton(),
            ],
          ),
        ),
        hintText: Texts.enterCoupon.tr(),
        hintStyle: const TextStyle(fontFamily: fontFamily,fontSize: 13),
        focusedBorder: border(false),
        focusColor: Colors.black12,
        enabledBorder: border(false),

      ),
    );
  }

  border(bool error) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(width: 1, color:error? Colors.red:Colors.transparent));
  }
}
