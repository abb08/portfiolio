import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(Intro.name),
        const Text(Intro.position),
        Text(Intro().description),
      ],
    );
  }
}
