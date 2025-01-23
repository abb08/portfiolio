import 'package:flutter/material.dart';
import 'package:portfolio/constants/experiences.dart';
import 'package:portfolio/views/experiences/experience_description.dart';
import 'package:portfolio/widgets/chip_view.dart';

class ExperienceListItems extends StatelessWidget {
  const ExperienceListItems({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          experiences[index].date,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface.withOpacity(0.8),
          ),
        ),
        // Add some spacing
        const SizedBox(width: 20),
        // Add an expanded widget to take up the remaining horizontal space
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ExperienceDescription(index: index),
              const SizedBox(height: 10),
              // Adds Chips
              ChipView(
                length: experiences[index].toolsUsed.length,
                labelText: experiences[index].toolsUsed,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
