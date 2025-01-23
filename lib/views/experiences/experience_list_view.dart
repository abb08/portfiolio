import 'package:flutter/material.dart';

import 'package:portfolio/constants/experiences.dart';
import 'package:portfolio/controller/launch_url.dart';
import 'package:portfolio/views/experiences/experience_list_items.dart';
import 'package:portfolio/widgets/card_view.dart';

import 'package:portfolio/widgets/hover_animated_card.dart';

class ExperienceListView extends StatefulWidget {
  const ExperienceListView({super.key});

  @override
  State<ExperienceListView> createState() => _ExperienceListViewState();
}

class _ExperienceListViewState extends State<ExperienceListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: experiences.length,
      itemBuilder: (context, index) {
        return HoverAnimatedCard(
          child: CardView(
            onTap: () {
              launchLink(experiences[index].link);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExperienceListItems(index: index),
            ),
          ),
        );
      },
    );
  }
}
