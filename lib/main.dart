import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resto/features/homeScreen/ui/home_screen.dart';
import 'package:resto/generated/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: 'assets/langs',
      assetLoader: const CodegenLoader(),
      saveLocale: true,
      startLocale: Locale('ar'),
      useOnlyLangCode: true,
      fallbackLocale: const Locale('ar'),
      supportedLocales: const [Locale('ar'), Locale('en')],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              title: 'Flutter Demo',
              locale: context.locale,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: [Locale('ar'), Locale('en')],
              theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme: GoogleFonts.almaraiTextTheme(),
              ),
              home: HomeScreen(),
            );
          }),
    );
  }
}
