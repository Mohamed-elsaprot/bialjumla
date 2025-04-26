import 'package:bialjumla/core/design/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/router.dart';
import 'features/navigation_screen/manager/navigation_screen_manager.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      startLocale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'locales',
      child: const MyApp()));}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.4, 866.3),
      builder: (_,child) {
        return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context)=> NavigationScreenCubit())
            ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routerConfig: AppRouter.router,
              theme: ThemeData(
                scaffoldBackgroundColor: Styles.scaffoldColor

              ),
            )
        );
      },
    );
  }
}

