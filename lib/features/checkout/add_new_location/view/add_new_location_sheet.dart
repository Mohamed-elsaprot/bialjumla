import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:bialjumla/features/checkout/add_new_location/view/widgets/city_drop_down_button.dart';
import 'package:bialjumla/features/checkout/add_new_location/view/widgets/country_drop_down_button.dart';
import 'package:bialjumla/features/checkout/add_new_location/view/widgets/location_item_text_field.dart';
import 'package:bialjumla/features/checkout/add_new_location/view/widgets/save_location_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewLocationSheet extends StatelessWidget {
  const AddNewLocationSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return SizedBox(
      height: 620.h,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(context,title: Texts.addNewAddress.tr()),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    // if(!isOneCountry)
                      const CountryDropDownButton(),
                    // if(!isOneCountry)
                      SizedBox(width: 10.w,),
                    const CityDropDownButton(),
                  ],
                ),
                LocationItemTextField(title: Texts.neighborhood.tr(),validator: (x){},required: true,controller: TextEditingController(),iconData: CupertinoIcons.scribble,),
                LocationItemTextField(title: Texts.homeDes.tr(),required: false,controller: TextEditingController(),iconData: CupertinoIcons.chat_bubble_text,),
                LocationItemTextField(title: Texts.streetName.tr(),required: false,controller: TextEditingController(),iconData: Icons.receipt_long,),
                LocationItemTextField(title: Texts.postalCode.tr(),required: false,controller: TextEditingController(),iconData: Icons.password_outlined,textInputType: TextInputType.phone,),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SaveLocationButton(formKey: formKey),
      ),
    );
  }
}
