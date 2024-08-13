import 'package:flutter/material.dart';

class SebhaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(alignment: Alignment.topCenter, children: [
          Image.asset(
            "assets/icons/head_sebha.png",
            scale: 1.2,
          ),
        ])
      ],
    );
  }
}
