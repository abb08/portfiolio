import 'package:flutter/material.dart';
import 'package:portfolio/views/about/about_view.dart';
import 'package:portfolio/views/contact/contact_view.dart';
import 'package:portfolio/views/experiences/experience_view.dart';
import 'package:portfolio/views/projects/project_view.dart';
import 'package:portfolio/views/skills/skills_view.dart';
import 'package:sidebarx/sidebarx.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required this.controller,
  });

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
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
