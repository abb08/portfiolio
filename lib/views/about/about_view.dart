import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/sticky_header_view.dart';
import 'package:sticky_headers/sticky_headers.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: const StickyHeaderView(
        title: 'About',
      ),
      content: Container(
        key: const GlobalObjectKey('about'),
        color: Colors.lightGreen,
        child: const Text(
          About.aboutMe,
        ),
      ),
    );
  }
}
