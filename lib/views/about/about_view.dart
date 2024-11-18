import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const GlobalObjectKey('about'),
      color: Colors.lightGreen,
      child: Text(
        loremIpsum(paragraphs: 4),
      ),
    );
  }
}
