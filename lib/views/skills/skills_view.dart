import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class SkillsView extends StatelessWidget {
  SkillsView({super.key});

  final skillsKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: skillsKey,
      color: Colors.orangeAccent,
      child: Text(
        loremIpsum(paragraphs: 3),
      ),
    );
  }
}
