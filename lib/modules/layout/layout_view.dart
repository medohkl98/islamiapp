import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiappnew/modules/core/settings_provider.dart';
import 'package:islamiappnew/modules/hadeth/hadith_view.dart';
import 'package:islamiappnew/modules/quran/quran_view.dart';
import 'package:islamiappnew/modules/radio/radio_view.dart';
import 'package:islamiappnew/modules/sebha/sebha_view.dart';
import 'package:islamiappnew/modules/settings/settings_view.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  static const String routname = "Layout";

  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> screenIndex = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    AppLocalizations lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);

    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(provider.getHomeBackround()),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(lang.islami),

          //titleTextStyle: Color(Colors.black),
        ),
        body: screenIndex[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: theme.primaryColor,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          // selectedLabelStyle: Theme.of(context).textTheme.displaySmall ,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/quran_icon.png")),
                label: lang.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/hadeth_icon.png")),
                label: lang.hadith),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/sebha_icon.png")),
                label: lang.sebha),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/radio_icon.png")),
                label: lang.raido),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: lang.settings)
          ],
        ),
      ),
    );
  }
}
