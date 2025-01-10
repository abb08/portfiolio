import 'package:flutter/material.dart';
import 'package:portfolio/views/about/about_view.dart';
import 'package:portfolio/views/contact/contact_view.dart';
import 'package:portfolio/views/experiences/experience_view.dart';
import 'package:portfolio/views/projects/project_view.dart';
import 'package:portfolio/views/skills/skills_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    // required this.controller,
  });

  // final SidebarXController controller;
  // final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        // controller: _scrollController,
        child: Column(
          children: [
            AboutView(),
            SkillsView(),
            ExperienceView(),
            ProjectView(),
            ContactView(),
          ],
        ),
      ),
    );
  }
}


// const List<GlobalObjectKey> keys = [
//   GlobalObjectKey('about'),
//   GlobalObjectKey('skills'),
//   GlobalObjectKey('experience'),
//   GlobalObjectKey('project'),
//   GlobalObjectKey('contact'),
// ];
