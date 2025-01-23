import 'package:flutter/material.dart';
import 'package:portfolio/constants/projects.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Display the card's title
        Text(
          projects[index].title,
          style: textTheme.titleMedium?.copyWith(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Add a space between the title and the text
        const SizedBox(height: 10),
        // Display the card's text
        Text(
          projects[index].description,
          textAlign: TextAlign.justify,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
