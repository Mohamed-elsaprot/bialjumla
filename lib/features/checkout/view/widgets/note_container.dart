import 'package:bialjumla/core/design/appTexts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_textField.dart';
import 'custom_continer.dart';

class NoteContainer extends StatelessWidget {
  const NoteContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        body: [
          Styles.text(Texts.doYouHaveNote.tr()),
          SizedBox(height: 8.h,),
          CustomTextField(hint: Texts.addNote.tr(),prefixIcon: const Icon(CupertinoIcons.chat_bubble_2), controller: TextEditingController())
        ]
    );
  }
}
