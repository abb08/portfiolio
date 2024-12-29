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
      content: Container(
        color: Theme.of(context).colorScheme.surface,
        key: const GlobalObjectKey('project'),
        child: ProjectListView(),
      ),
    );
  }
}
