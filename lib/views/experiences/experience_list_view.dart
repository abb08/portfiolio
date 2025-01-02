import 'package:flutter/material.dart';

import 'package:portfolio/constants/experiences.dart';
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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: experiences.length,
      itemBuilder: (context, index) {
        return HoverAnimatedCard(
          child: CardView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        experiences[index].date,
                        style: textTheme.bodyMedium?.copyWith(
                          color:
                              colorScheme.onSecondaryContainer.withOpacity(0.8),
                        ),
                      ),
                      // Add some spacing
                      const SizedBox(width: 20),
                      // Add an expanded widget to take up the remaining horizontal space
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Add a title widget
                            Text(
                              experiences[index].jobTitle,
                              style: textTheme.titleMedium?.copyWith(
                                color: colorScheme.onSecondaryContainer,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Add some spacing between the title and the subtitle
                            const SizedBox(height: 5),
                            // Add a subtitle widget
                            Text(
                              experiences[index].companyName,
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSecondaryContainer
                                    .withOpacity(0.8),
                              ),
                            ),
                            // Add some spacing between the subtitle and the text
                            const SizedBox(height: 10),
                            // Add a text widget to display some text
                            Text(
                              experiences[index].jobDescription,
                              textAlign: TextAlign.justify,
                              style: textTheme.bodyLarge?.copyWith(
                                color: colorScheme.onSecondaryContainer,
                                height: 1.5, // Line height for readability
                              ),
                            ),
                            const SizedBox(height: 10),

                            // Adds Chips
                            Wrap(
                              spacing: 8.0, // Horizontal spacing between chips
                              runSpacing:
                                  4.0, // Vertical spacing between chip rows
                              children: List<Widget>.generate(
                                experiences[index].toolsUsed.length,
                                (chipIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Chip(
                                      backgroundColor:
                                          colorScheme.primaryContainer,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      label: Text(
                                        experiences[index].toolsUsed[chipIndex],
                                        style: textTheme.bodySmall?.copyWith(
                                          color: colorScheme.onPrimaryContainer,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
