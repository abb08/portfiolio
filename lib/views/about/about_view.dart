import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class AboutView extends StatelessWidget {
  AboutView({super.key});

  final aboutKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutKey,
      color: Colors.lightGreen,
      child: Text(
        loremIpsum(paragraphs: 4),
      ),
    );
  }
}
