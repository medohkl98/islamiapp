import 'package:flutter/material.dart';

class HadithView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/icons/hadith_header.png",
          scale: 1.2,
        )
      ],
    );
  }
}
