import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:portfolio/models/experience.dart';

class ExperienceListView extends StatelessWidget {
  ExperienceListView({super.key});

  final List<Experience> experiences = [
    Experience(
      date: '2024-01-01',
      jobTitle: 'Flutter Developer',
      companyName: 'ABC Technology',
      jobDescription: loremIpsum(words: 40),
      toolsUsed: const [
        'Dart',
        'Flutter',
        'Firebase',
        'Material UI',
      ],
      link: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: experiences.length,
      itemBuilder: (context, index) {
        return Card(
          // Define the shape of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          // Define how the card's content should be clipped
          clipBehavior: Clip.antiAliasWithSaveLayer,
          // Define the child widget of the card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Add padding around the row widget
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(experiences[index].date),
                    // Add some spacing
                    Container(width: 20),
                    // Add an expanded widget to take up the remaining horizontal space
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Add some spacing between the top of the card and the title
                          // Container(height: 5),
                          // Add a title widget
                          Text(experiences[index].jobTitle),
                          // Add some spacing between the title and the subtitle
                          Container(height: 5),
                          // Add a subtitle widget
                          Text(experiences[index].companyName),
                          // Add some spacing between the subtitle and the text
                          Container(height: 10),
                          // Add a text widget to display some text
                          Text(experiences[index].jobDescription),
                          // Adds Chips
                          Wrap(
                            children: List<Widget>.generate(
                              experiences[index].toolsUsed.length,
                              (chipIndex) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Chip(
                                    label: Text(experiences[index]
                                        .toolsUsed[chipIndex]),
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
            ],
          ),
        );
      },
    );
  }
}
