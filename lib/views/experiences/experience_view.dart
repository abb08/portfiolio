import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const GlobalObjectKey('experience'),
      color: Colors.tealAccent,
      child: Text(
        loremIpsum(paragraphs: 4),
      ),
    );
  }
}
