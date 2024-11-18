import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class ContactView extends StatelessWidget {
  ContactView({super.key});

  final contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: contactKey,
      color: Colors.purpleAccent,
      child: Text(
        loremIpsum(paragraphs: 2),
      ),
    );
  }
}
