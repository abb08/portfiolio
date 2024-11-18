import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class ProjectView extends StatelessWidget {
  ProjectView({super.key});

  final projectKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: projectKey,
      color: Colors.redAccent,
      child: Text(
        loremIpsum(paragraphs: 4),
      ),
    );
  }
}
