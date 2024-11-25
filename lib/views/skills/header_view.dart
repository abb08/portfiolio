import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          Skills.headings,
        ),
        Text(Skills.descriptionFirst),
        Text(
          Skills.descriptionSecond,
        ),
      ],
    );
  }
}
