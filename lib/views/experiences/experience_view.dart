import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class ExperienceView extends StatelessWidget {
  ExperienceView({super.key});

  final experienceKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: experienceKey,
      color: Colors.tealAccent,
      child: Text(
        loremIpsum(paragraphs: 4),
      ),
    );
  }
}
