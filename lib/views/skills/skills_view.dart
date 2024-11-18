import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const GlobalObjectKey('skills'),
      color: Colors.orangeAccent,
      child: Text(
        loremIpsum(paragraphs: 3),
      ),
    );
  }
}
