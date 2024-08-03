import 'package:flutter/material.dart';
import 'package:islamiappnew/modules/hadeth/hadith_view.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  static const String routName = "hadithDetails";

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as AhadithData;
    ThemeData theme = Theme.of(context);

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
                    data.title,
                    style: theme.textTheme.bodyMedium,
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
                      style: theme.textTheme.bodyMedium?.copyWith(height: 1.8)),
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
