import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const GlobalObjectKey('contact'),
      color: Colors.purpleAccent,
      child: Text(
        loremIpsum(paragraphs: 2),
      ),
    );
  }
}
