import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/sticky_header_view.dart';
import 'package:sticky_headers/sticky_headers.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return StickyHeader(
      header: const StickyHeaderView(
        title: 'About',
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          key: const GlobalObjectKey('about'),
          child: Text(
            About.aboutMe,
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
