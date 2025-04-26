import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const.dart';
import '../design/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, this.title, required this.controller, this.validator, this.maxLines=1, this.onChange, this.onTap, this.onSubmit, this.focusNode, this.prefixIcon, this.fillColor=Colors.white, this.inputBorder, this.hint, this.height, this.textInputType, this.textAlign, this.textStyle, this.hintSize, this.obscureText, this.suffixIcon, this.contentPadding, this.readOnly}) : super(key: key);
  final String? title,hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final int? maxLines;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final void Function(String)? onSubmit;
  final FocusNode? focusNode;
  final Widget? prefixIcon,suffixIcon;
  final Color? fillColor;
  final InputBorder? inputBorder;
  final double? height;
  final TextInputType? textInputType;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final double? hintSize;
  final bool? obscureText,readOnly;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      child: TextFormField(
        readOnly: readOnly??false,
        keyboardType: textInputType,
        onTap: onTap,
        onChanged: onChange,
        onFieldSubmitted: onSubmit,
        controller: controller,
        validator: validator,
        cursorColor: Styles.primary,
        maxLines: maxLines,
        textAlign: textAlign??TextAlign.start,
        style: textStyle,
        obscureText: obscureText??false,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hint,
            contentPadding: contentPadding??EdgeInsets.symmetric(vertical: 0.h,horizontal: 12.w),
            prefixIconColor: Colors.grey.shade400,
            hintStyle: TextStyle(fontFamily: fontFamily,fontSize: hintSize??15,color: Colors.black38),
            iconColor: Styles.primary,
            fillColor: fillColor??Colors.grey.shade100,
            filled: true,
            errorStyle: const TextStyle(fontFamily: fontFamily),
            label: title!=null? Styles.subTitle(title!, size: 14):null,
            alignLabelWithHint: true,
            errorBorder: inputBorder??border(),
            border: inputBorder??border(),
            focusedBorder: inputBorder??border(),
            enabledBorder: inputBorder??border(),
        )
      ),
    );
  }

}

OutlineInputBorder border() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(width: 0, color: Colors.black12)
  );
}
