import 'package:flutter/material.dart';
import 'package:portfolio/constants/projects.dart';
import 'package:portfolio/views/projects/image_view.dart';
import 'package:portfolio/views/projects/project_description.dart';
import 'package:portfolio/widgets/chip_view.dart';

class ProjectListItems extends StatelessWidget {
  const ProjectListItems({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Display an image at the top of the card
        ImageView(
          name: projects[index].image,
          context: context,
        ),
        // Add a container with padding that contains the card's title, text, and chips
        Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProjectDescription(index: index),
              const SizedBox(height: 10),
              // Adds Chips
              ChipView(
                length: projects[index].builtWith.length,
                labelText: projects[index].builtWith,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
