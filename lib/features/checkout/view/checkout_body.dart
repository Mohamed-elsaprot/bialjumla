import 'package:bialjumla/core/general_widgets/custom_appbar.dart';
import 'package:bialjumla/features/checkout/view/widgets/address_container.dart';
import 'package:bialjumla/features/checkout/view/widgets/complete_order_Container.dart';
import 'package:bialjumla/features/checkout/view/widgets/coupon_container.dart';
import 'package:bialjumla/features/checkout/view/widgets/note_container.dart';
import 'package:bialjumla/features/checkout/view/widgets/payment_methods_container.dart';
import 'package:bialjumla/features/checkout/view/widgets/price_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              const AddressContainer(),
              SizedBox(height: 10.h,),
              PaymentMethodsContainer(),
              SizedBox(height: 10.h,),
              const CouponContainer(),
              SizedBox(height: 10.h,),
              NoteContainer(),
              SizedBox(height: 10.h,),
              PriceContainer(),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CompleteOrderContainer(),
    );
  }
}
