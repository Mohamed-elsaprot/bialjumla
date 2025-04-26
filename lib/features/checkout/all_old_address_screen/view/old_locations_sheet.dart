import 'package:bialjumla/core/design/appTexts.dart';
import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:bialjumla/features/checkout/all_old_address_screen/view/widgets/add_new_location_container.dart';
import 'package:bialjumla/features/checkout/all_old_address_screen/view/widgets/confirm_location_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/general_widgets/custom_radio_tile.dart';


class AddNewLocationSheet extends StatefulWidget {
  const AddNewLocationSheet({Key? key}) : super(key: key);

  @override
  State<AddNewLocationSheet> createState() => _AddNewLocationSheetState();
}

class _AddNewLocationSheetState extends State<AddNewLocationSheet> {
  late num selectedId;
  int selectedIndex=0;
  @override
  void initState() {
    selectedId = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(context,title: Texts.chooseDeliveryLocation.tr()),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ...List.generate(4, (index) {
                // if(addressCubit.allAddressesList[index].id==selectedId)
                  selectedIndex = index;
                return CustomRadioTiles(
                title: 'country, city',
                subTitle: 'neighborhood, homeAddress',
                horPadding: 14, val: index,
                gVal: selectedId,
                fun: (x){
                  selectedId = x!;
                  setState(() {});
                },
                );
              }
              ),
              SizedBox(height: 10.h,),
              const AddNewLocationContainer(),
            ],
          ),
        ),
        bottomNavigationBar: ConfirmLocationButton(index: selectedIndex,selectedId: selectedId),
      ),
    );
  }
}
