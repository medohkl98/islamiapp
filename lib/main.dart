import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiappnew/modules/core/app_theme_manger.dart';
import 'package:islamiappnew/modules/core/settings_provider.dart';
import 'package:islamiappnew/modules/hadeth/hadith_details.dart';
import 'package:islamiappnew/modules/layout/layout_view.dart';
import 'package:islamiappnew/modules/quran/quran_details.dart';
import 'package:islamiappnew/modules/splash/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Islami App',
      theme: App_Theme_Manger.lightTheme,
      darkTheme: App_Theme_Manger.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: provider.currentThemeMode,
      locale: Locale(provider.currentLanguageCode),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: "/",
      routes: {
        SplashView.routname: (context) => SplashView(),
        LayoutView.routname: (context) => LayoutView(),
        QuranDetails.routName: (context) => const QuranDetails(),
        HadithDetails.routName: (context) => const HadithDetails(),
      },
    );
  }
}
