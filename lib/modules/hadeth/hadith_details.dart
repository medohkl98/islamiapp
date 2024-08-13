import 'package:flutter/material.dart';
import 'package:islamiappnew/modules/hadeth/hadith_view.dart';
import 'package:provider/provider.dart';

import '../core/settings_provider.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  static const String routName = "hadithDetails";

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as AhadithData;
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(provider.getHomeBackround()),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 80),
          padding:
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
          decoration: BoxDecoration(
            color: provider.isDarkMode()
                ? const Color(0xff141A2E).withOpacity(0.85)
                : Color(0xFFF8F8F8).withOpacity(0.85),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data.title,
                    style: theme.textTheme.bodyMedium?.copyWith(
                        color: provider.isDarkMode()
                            ? theme.primaryColorDark
                            : Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  //const Icon(Icons.play_circle_filled_rounded),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(data.body,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                          height: 1.8,
                          color: provider.isDarkMode()
                              ? theme.primaryColorDark
                              : Colors.black)),
                  // itemCount: verses.length,
                ),
              ),

              // Text( content,
              // textAlign: TextAlign.center
              // ,style:theme.textTheme.bodyMedium?.copyWith(height: 1.0) ,
              //
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
