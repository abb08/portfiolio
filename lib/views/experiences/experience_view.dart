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
      content: Container(
        key: const GlobalObjectKey('experience'),
        color: Colors.blue.shade600,
        child: ExperienceListView(),
      ),
    );
  }
}
