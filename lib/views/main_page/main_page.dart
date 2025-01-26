import 'package:flutter/material.dart';
import 'package:portfolio/views/about/about_view.dart';
import 'package:portfolio/views/contact/contact_view.dart';
import 'package:portfolio/views/heading/heading_view.dart';
import 'package:portfolio/views/projects/project_view.dart';
import 'package:portfolio/views/skills/skills_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainPage extends StatelessWidget {
  final ScrollController scrollController;
  const MainPage({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return Expanded(
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            if (isSmallScreen) const HeadingView(),
            const AboutView(),
            const SkillsView(),
            // const ExperienceView(),
            const ProjectView(),
            const ContactView(),
          ],
        ),
      ),
    );
  }
}
