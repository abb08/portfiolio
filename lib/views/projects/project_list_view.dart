import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/projects.dart';

class ProjectListView extends StatelessWidget {
  ProjectListView({super.key});

  final List<Projects> projects = [
    const Projects(
      image: 'Document Sharing App Promotion.png',
      title: 'Document Sharing App',
      description:
          'Document Sharing App is an Android app built with Java, XML, and Firebase for easy file sharing. Users can log in, create groups to organize files, and upload or manage various file types like PDFs, images, audio, and videos. The app allows file editing, deletion, and downloading directly to Android devices for efficient sharing and management.',
      builtWith: [
        'Java',
        'XML',
        'Firebase',
        'Material UI',
      ],
      link: '',
    ),
    const Projects(
      image: 'E2EE Chat App Promotion.png',
      title: 'E2EE Chat App',
      description:
          'An end-to-end encrypted chat app designed for privacy-first communication. Stay connected with friends, family, and teams while keeping your messages and data safe from prying eyes. The End-to-End Encrypted Messaging Mobile App is built using Flutter and Firebase.',
      builtWith: [
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
    //   return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: 5,
    //     itemBuilder: (context, index) {
    //       return Card(
    //         child: InkWell(
    //           splashColor: Colors.blue.withAlpha(30),
    //           onTap: () {
    //             debugPrint('Card tapped.');
    //           },
    //           child: const ListTile(
    //             leading: FlutterLogo(size: 72.0),
    //             title: Text('Three-line ListTile'),
    //             subtitle:
    //                 Text('A sufficiently long subtitle warrants three lines.'),
    //           ),
    //         ),
    //       );
    //     },
    //   );

    return ListView.builder(
        shrinkWrap: true,
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
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
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey[800],
                          ),
                        ),
                        // Add a space between the title and the text
                        Container(height: 10),
                        // Display the card's text using a font size of 15 and a light grey color
                        Text(
                          projects[index].description,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                        ),
                        // Adds Chips
                        Wrap(
                          children: List<Widget>.generate(
                            projects[index].builtWith.length,
                            (chipIndex) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Chip(
                                  label: Text(
                                      projects[index].builtWith[chipIndex]),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),
                  // Add a small space between the card and the next widget
                  Container(height: 5),
                ],
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

class MyColorsSample {
  static const Color primary = Color(0xFF12376F);
  static const Color primaryDark = Color(0xFF0C44A3);
  static const Color primaryLight = Color(0xFF43A3F3);
  static const Color green = Colors.green;
  static Color black = const Color(0xFF000000);
  static const Color accent = Color(0xFFFF4081);
  static const Color accentDark = Color(0xFFF50057);
  static const Color accentLight = Color(0xFFFF80AB);
  static const Color grey_3 = Color(0xFFf7f7f7);
  static const Color grey_5 = Color(0xFFf2f2f2);
  static const Color grey_10 = Color(0xFFe6e6e6);
  static const Color grey_20 = Color(0xFFcccccc);
  static const Color grey_40 = Color(0xFF999999);
  static const Color grey_60 = Color(0xFF666666);
  static const Color grey_80 = Color(0xFF37474F);
  static const Color grey_90 = Color(0xFF263238);
  static const Color grey_95 = Color(0xFF1a1a1a);
  static const Color grey_100_ = Color(0xFF0d0d0d);
  static const Color transparent = Color(0x00f7f7f7);
}

class MyTextSample {
  static TextStyle? display4(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge;
  }

  static TextStyle? display3(BuildContext context) {
    return Theme.of(context).textTheme.displayMedium;
  }

  static TextStyle? display2(BuildContext context) {
    return Theme.of(context).textTheme.displaySmall;
  }

  static TextStyle? display1(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium;
  }

  static TextStyle? headline(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall;
  }

  static TextStyle? title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge;
  }

  static TextStyle medium(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
          fontSize: 18,
        );
  }

  static TextStyle? subhead(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium;
  }

  static TextStyle? body2(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge;
  }

  static TextStyle? body1(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium;
  }

  static TextStyle? caption(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall;
  }

  static TextStyle? button(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(letterSpacing: 1);
  }

  static TextStyle? subtitle(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall;
  }

  static TextStyle? overline(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall;
  }
}
