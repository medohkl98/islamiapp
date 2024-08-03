import 'package:flutter/material.dart';
import 'package:islamiappnew/modules/core/app_theme_manger.dart';
import 'package:islamiappnew/modules/layout/layout_view.dart';
import 'package:islamiappnew/modules/quran/quran_detailes.dart';
import 'package:islamiappnew/modules/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: App_Theme_Manger.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        SplashView.routname: (context) => SplashView(),
        LayoutView.routname: (context) => LayoutView(),
        QuranDetailes.routName: (context) => const QuranDetailes(),
      },
    );
  }
}
