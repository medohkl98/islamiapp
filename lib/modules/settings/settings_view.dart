import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:islamiappnew/modules/core/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  var languageList = ["English", "عربي"];

  List<String> themeList = ["Dark", "Light"];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
              hintText: 'Select job role',
              items: languageList,
              initialItem: provider.currentLanguageCode == "en"
                  ? languageList[0]
                  : languageList[1],
              onChanged: (value) {
                if (value == "English") {
                  provider.changeLanguageCode("en");
                }
                if (value == "عربي") {
                  provider.changeLanguageCode("ar");
                }
                log('changing value to: $value');
              },
              decoration: CustomDropdownDecoration(
                closedFillColor: provider.isDarkMode()
                    ? const Color(0xff141A2E)
                    : Colors.white,
                closedSuffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: provider.isDarkMode()
                      ? theme.primaryColorDark
                      : Colors.black,
                ),
                expandedSuffixIcon: Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: provider.isDarkMode()
                      ? theme.primaryColorDark
                      : Colors.black,
                ),
                expandedFillColor: provider.isDarkMode()
                    ? const Color(0xff141A2E)
                    : Colors.white,
              )),
          //------------------------------------------------------------------------
          //--------------------------------------------------------------------
          const SizedBox(
            height: 50,
          ),
          Text(
            "Theme",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: themeList,
            initialItem: provider.currentThemeMode == ThemeMode.dark
                ? themeList[0]
                : themeList[1],
            onChanged: (value) {
              if (value == "Dark") {
                provider.changeThemeMode(ThemeMode.dark);
              }
              if (value == "Light") {
                provider.changeThemeMode(ThemeMode.light);
              }
              log('changing value to: $value');
            },
            decoration: CustomDropdownDecoration(
              closedFillColor: provider.isDarkMode()
                  ? const Color(0xff141A2E)
                  : Colors.white,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: provider.isDarkMode()
                    ? theme.primaryColorDark
                    : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: provider.isDarkMode()
                    ? theme.primaryColorDark
                    : Colors.black,
              ),
              expandedFillColor: provider.isDarkMode()
                  ? const Color(0xff141A2E)
                  : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
