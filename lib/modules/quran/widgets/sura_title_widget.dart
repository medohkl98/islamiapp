import 'package:flutter/material.dart';
import 'package:islamiappnew/modules/quran/quran_view.dart';

class SuraTitleWidget extends StatelessWidget {
  final SuraData data;

  const SuraTitleWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(data.suraNum,
              textAlign: TextAlign.center, style: theme.textTheme.bodyMedium),
        ),
        SizedBox(
          height: 40,
          child: VerticalDivider(
            thickness: 2,
          ),
        ),
        Expanded(
          child: Text(data.suraName,
              textAlign: TextAlign.center, style: theme.textTheme.bodyMedium),
        )
      ],
    );
  }
}