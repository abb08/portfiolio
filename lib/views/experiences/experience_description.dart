import 'package:flutter/material.dart';
import 'package:portfolio/constants/experiences.dart';

class ExperienceDescription extends StatelessWidget {
  const ExperienceDescription({
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
        // Add a title widget
        Text(
          experiences[index].jobTitle,
          style: textTheme.titleMedium?.copyWith(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Add some spacing between the title and the subtitle
        const SizedBox(height: 5),
        // Add a subtitle widget
        Text(
          experiences[index].companyName,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface.withOpacity(0.8),
          ),
        ),
        // Add some spacing between the subtitle and the text
        const SizedBox(height: 10),
        // Add a text widget to display some text
        Text(
          experiences[index].jobDescription,
          textAlign: TextAlign.justify,
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface,
            height: 1.5, // Line height for readability
          ),
        ),
      ],
    );
  }
}
