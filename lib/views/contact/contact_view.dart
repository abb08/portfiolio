import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            height: 50.0,
            color: Colors.blueGrey[700]?.withOpacity(0.3),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Contact',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      content: Container(
        key: const GlobalObjectKey('contact'),
        color: Colors.purpleAccent,
        child: Text(
          loremIpsum(paragraphs: 2),
        ),
      ),
    );
  }
}
