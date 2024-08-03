import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiappnew/modules/quran/quran_view.dart';

class QuranDetailes extends StatefulWidget {
  static const String routName = "quranDetailes";

  const QuranDetailes({super.key});

  @override
  State<QuranDetailes> createState() => _QuranDetailesState();
}

class _QuranDetailesState extends State<QuranDetailes> {
  String content = "";

  @override
  Widget build(BuildContext context) {
    SuraData data = ModalRoute.of(context)?.settings.arguments as SuraData;

    ThemeData theme = Theme.of(context);
    if (content.isEmpty) loadingData(data.suraNum);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/imgs/home_background.png"),
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
            color: Color(0xFFF8F8F8).withOpacity(0.85),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "  سورة  ${data.suraName}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.play_circle_filled_rounded),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                      "  {${index + 1}} ${verses[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(height: 1.8)),
                  itemCount: verses.length,
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

  List<String> verses = [];

  Future<void> loadingData(String suraNum) async {
    content = await rootBundle.loadString("assets/files/quran/$suraNum.txt");
    verses = content.split("\n");
    setState(() {});
    //print("object");
    //print(content);
  }
}
