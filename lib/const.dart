import 'dart:ui';

import 'package:bialjumla/features/cart/view/cart.dart';
import 'package:bialjumla/features/categories/view/categories.dart';
import 'package:bialjumla/features/home/view/home.dart';
import 'package:bialjumla/features/settings/view/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String vegetables='https://elsaeidtea.com/assets/WhatsApp_Image_2025-04-13_at_2.29.47_AM-removebg-preview.png';
String testDishImage='https://img.freepik.com/premium-photo/nigerian-beans-porridge-nigerian-dish-plate-white-background-directly-view_864588-12608.jpg';

List bannersList = ['https://marketplace.canva.com/EAGGMu6NT-o/1/0/1600w/canva-blue-and-orange-modern-welcome-banner-opdOJb2tOUE.jpg',
  'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/business-banner-template-design-f4b281ca556e3d500e78fc6260273284_screen.jpg?ts=1561497794',
  'https://marketplace.canva.com/EAGGMu6NT-o/1/0/1600w/canva-blue-and-orange-modern-welcome-banner-opdOJb2tOUE.jpg',
];

List foodList = [
  'https://img.freepik.com/premium-photo/nigerian-beans-porridge-nigerian-dish-plate-white-background-directly-view_864588-12608.jpg',
  'https://static.vecteezy.com/system/resources/previews/025/521/387/non_2x/tasty-burger-meal-with-fries-photo.jpg',
];



List<Widget> tabsList = [
  Home(),
  Categories(),
  Cart(),
  Settings(),
];

const String fontFamily = 'Cairo';
// const String fontFamily = 'Tajawal';
const String htmlExample = "<p><span style=\"color: rgb(13, 13, 13);\">المذكور في هذا اللائحة يتعامل بالمساواة بين الجنسين، واستخدام لغة الذكورة يكون لأسباب الراحة فقط.</span></p><p><span style=\"color: rgb(13, 13, 13);\">تحديدات هذه اللائحة وشروط الاستخدام الموجودة على الموقع تحدد العلاقة القانونية بين المستخدم والموقع، وشروط الاستخدام للموقع و/أو طلب المنتجات من الموقع ويشير إلى موافقة المستخدم على هذه الشروط وشروط إضافية موجودة على الموقع.</span></p><p><span style=\"color: rgb(13, 13, 13);\">تحتفظ الشركة في أي وقت، بناءً على تقديرها الحصري، بتحديث هذه اللائحة.</span></p><p><span style=\"color: rgb(13, 13, 13);\">تسري هذه الشروط على استخدام الموقع والخدمات المتضمنة فيه من خلال أي حاسوب أو جهاز اتصال آخر (مثل الهاتف المحمول، الأجهزة اللوحية وما إلى ذلك) وأيضًا تسري على استخدام الموقع، سواء عبر الإنترنت أو عبر أي شبكة أو وسيلة اتصال أخرى.</span></p><p><span style=\"color: rgb(13, 13, 13);\">لا يهدف ما جاء في هذه اللائحة إلى التنازل عن أحكام قانون حماية المستهلك، قانون 1981 (المشار إليه فيما بعد: \"قانون حماية المستهلك\") واللوائح المصاحبة التي تطبق منه، فيما يخص الموقع (المشار إليها فيما بعد: \"التعليمات\")، باستثناء الحالات التي يمكن فيها التنازل عن التعليمات المذكورة وتم التنازل عنها في إطار الموقع سواء صراحة أو ضمنا.</span></p><p><span style=\"color: rgb(13, 13, 13);\">تقوم الشركة وإدارة الموقع ببذل قصارى جهدهم لتقديم أكمل وأشمل معلومات حول المنتج بما في ذلك الصور، على الرغم مما هو مذكور في هذه الفقرة يجب التوضيح، أنه قد يظهر في الموقع أخطاء بغير قصد و/أو بدون نية الخداع، بما في ذلك الانحياز و/أو الأخطاء و/أو الغياب والشركة، إدارة الموقع والموقع لا تتحمل أي مسؤولية ناتجة عن تلك الأخطاء و/أو الأخطاء.</span></p><p><span style=\"color: rgb(13, 13, 13);\">تُقدم عناوين الفقرات للراحة وتحديد الموقع للعميل ولا تستخدم في تفسير اللائحة.</span></p><p><span style=\"color: rgb(13, 13, 13);\">خطأ في وصف المنتج/المنتجات لا يلزم الشركة. </span></p><p><span style=\"color: rgb(13, 13, 13);\">تُعرض صور المنتجات على الموقع لأغراض التوضيح فقط. بالإضافة إلى ذلك، قد تحدث اختلافات في المظهر، واللون، والحجم، وما إلى ذلك بين المنتج كما هو معروض على الموقع وبين المنتج الفعلي.</span></p><p><span style=\"color: rgb(13, 13, 13);\">لا يجوز نسخ واستخدام، أو السماح للآخرين بالاستفادة، بأي طريقة أخرى بالمحتويات من الموقع، بما في ذلك المواقع الإلكترونية الأخرى، الإعلانات الإلكترونية، الإعلانات المطبوعة وما إلى ذلك، لأي غرض آخر.</span></p>";

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

const List<String> arabCountryCodes = [
  'BH', // البحرين
  'KW', // الكويت
  'QA', // قطر
  'SA', // السعودية
  'AE', // الإمارات
  // 'DZ', // الجزائر
  // 'EG', // مصر
  // 'IQ', // العراق
  // 'JO', // الأردن
  // 'LB', // لبنان
  // 'LY', // ليبيا
  // 'MR', // موريتانيا
  // 'MA', // المغرب
  // 'OM', // عمان
  // 'PS', // فلسطين
  // 'SO', // الصومال
  // 'SD', // السودان
  // 'SY', // سوريا
  // 'TN', // تونس
  // 'YE', // اليمن
  // 'KM', // جزر القمر
  // 'DJ', // جيبوتي
];