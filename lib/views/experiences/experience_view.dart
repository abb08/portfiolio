import 'package:flutter/material.dart';
import 'package:portfolio/views/experiences/experience_list_view.dart';
import 'package:portfolio/widgets/sticky_header_view.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: const StickyHeaderView(
        title: 'Experience',
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          key: const GlobalObjectKey('experience'),
          child: const ExperienceListView(),
        ),
      ),
    );
  }
}
