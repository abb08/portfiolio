import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const GlobalObjectKey('project'),
      color: Colors.redAccent,
      child: Text(
        loremIpsum(paragraphs: 4),
      ),
    );
  }
}
