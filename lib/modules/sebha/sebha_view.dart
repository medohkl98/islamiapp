import 'package:flutter/material.dart';

class SebhaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/icons/sebha_header.png",
          scale: 1.2,
        )
      ],
    );
  }
}
