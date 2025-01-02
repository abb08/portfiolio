import 'package:flutter/material.dart';

import 'package:portfolio/views/projects/project_list_view.dart';
import 'package:portfolio/widgets/sticky_header_view.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: const StickyHeaderView(
        title: 'Projects',
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          key: const GlobalObjectKey('project'),
          child: const ProjectListView(),
        ),
      ),
    );
  }
}
