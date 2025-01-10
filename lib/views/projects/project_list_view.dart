import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/projects.dart';
import 'package:portfolio/controller/launch_url.dart';
import 'package:portfolio/widgets/card_view.dart';
import 'package:portfolio/widgets/hover_animated_card.dart';

class ProjectListView extends StatefulWidget {
  const ProjectListView({super.key});

  @override
  State<ProjectListView> createState() => _ProjectListViewState();
}

class _ProjectListViewState extends State<ProjectListView> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ListView.builder(
        shrinkWrap: true,
        itemCount: projects.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return HoverAnimatedCard(
            child: CardView(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  launchLink(projects[index].link);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels
                      getImage(projects[index].image, context),
                      // Add a container with padding that contains the card's title, text, and buttons
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Display the card's title using a font size of 24 and a dark grey color
                            Text(
                              projects[index].title,
                              style: textTheme.titleMedium?.copyWith(
                                color: colorScheme.onSecondaryContainer,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Add a space between the title and the text
                            const SizedBox(height: 10),
                            // Display the card's text using a font size of 15 and a light grey color
                            Text(
                              projects[index].description,
                              textAlign: TextAlign.justify,
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSecondaryContainer,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 10),
                            // Adds Chips
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              children: List<Widget>.generate(
                                projects[index].builtWith.length,
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
                                        projects[index].builtWith[chipIndex],
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
                ),
              ),
            ),
          );
        });
  }
}

getImage(String name, BuildContext context) {
  bool isDarkMode = AdaptiveTheme.of(context).mode.isDark;
  return Image.asset(
    'assets/images/$name',
    // height: 160,
    width: double.infinity,
    fit: BoxFit.contain,

    color: isDarkMode ? Colors.black12 : null,
    colorBlendMode: isDarkMode ? BlendMode.darken : null,
  );
}
