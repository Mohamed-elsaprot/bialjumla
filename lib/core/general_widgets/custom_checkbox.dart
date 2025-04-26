import 'package:bialjumla/core/design/app_styles.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key, required this.title, required this.count});
  final String title,count;
  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>setState(()=> val = !val),
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Styles.text(widget.title,color: val? Styles.primary:null),
            Styles.text('  (${widget.count})',color: val? Styles.primary:Colors.black38),
            Spacer(),
            Checkbox(
                activeColor: Styles.primary,
                value: val, onChanged: (x)=>setState(()=> val = x!)
            )
          ],
        ),
      ),
    );
  }
}
