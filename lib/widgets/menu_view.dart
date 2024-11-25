import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  MenuView({super.key});

  final menuItems = [
    'About',
    'Skills',
    'Experience',
    'Projects',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: menuItems[index],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _scrollToWidget(menuItems[index]);
                      },
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  void _scrollToWidget(String menuItem) {
    // switch (menuItem) {
    //   case 'About':
    //     Scrollable.ensureVisible(AboutView().aboutKey.currentContext!);
    //     print(menuItem);
    //   case 'Skills':
    //     // Scrollable.ensureVisible(SkillsView().skillsKey.currentContext!);
    //     print(menuItem);

    //   case 'Experience':
    //     Scrollable.ensureVisible(
    //         ExperienceView().experienceKey.currentContext!);
    //     print(menuItem);

    //   case 'Projects':
    //     Scrollable.ensureVisible(ProjectView().projectKey.currentContext!);
    //     print(menuItem);

    //   case 'Contact':
    //     Scrollable.ensureVisible(ContactView().contactKey.currentContext!);
    //     print(menuItem);
    // }
  }
}
