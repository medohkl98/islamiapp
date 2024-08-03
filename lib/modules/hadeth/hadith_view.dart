import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiappnew/modules/hadeth/hadith_details.dart';

class HadithView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    if (ahdithList.isEmpty) loadingHadithData();
    return Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "assets/icons/hadith_header.png",
            scale: 1,
          ),
          Divider(

              //color:theme.primaryColor,
              ),
          Text("الأحاديث"),
          const Divider(
              //color:theme.primaryColor,
              ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadithDetails.routName,
                      arguments: ahdithList[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                      textAlign: TextAlign.center, ahdithList[index].title),
                ),
              ),
              itemCount: ahdithList.length,
            ),
          )
        ]);
  }

  List<AhadithData> ahdithList = [];
  String ahdithContent = "";
  List<String> ahadith = [];

  Future<void> loadingHadithData() async {
    ahdithContent =
        await rootBundle.loadString("assets/files/hadeih/ahadeth.txt");
    ahadith = ahdithContent.split("#");

    for (int i = 0; i < ahadith.length; i++) {
      String singleHadith = ahadith[i].trim();
      int titleLength = singleHadith.indexOf("\n");

      String title = singleHadith.substring(0, titleLength);
      String body = singleHadith.substring(titleLength + 1);
      AhadithData data = AhadithData(title: title, body: body);
      ahdithList.add(data);
      print(body);
    }

    // setState(() {});
    //print("object");
    // print(ahdithContent);
  }
}

class AhadithData {
  final String title;
  final String body;

  AhadithData({required this.title, required this.body});
}
