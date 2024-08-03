import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/icons/radio_header.png",
          scale: 1.2,
        )
      ],
    );
  }
}
