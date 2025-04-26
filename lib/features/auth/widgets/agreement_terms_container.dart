import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_styles.dart';

class AgreementTermsContainer extends StatefulWidget {
  const AgreementTermsContainer({super.key});

  @override
  State<AgreementTermsContainer> createState() => _AgreementTermsContainerState();
}

class _AgreementTermsContainerState extends State<AgreementTermsContainer> {
  bool agree = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> setState(()=> agree = !agree),
      child: Row(
        children: [
          Checkbox(value: agree, onChanged: (x)=> setState(()=> agree = !agree),activeColor: Styles.primary,),
          SizedBox(
              width: 260.w,
              child: Styles.text('I agree to Bialjumla Terms & conditions and Privacy policy.',size: 12,))
        ],
      ),
    );
  }
}
