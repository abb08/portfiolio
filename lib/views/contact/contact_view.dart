import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/sticky_header_view.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: const StickyHeaderView(
        title: 'Contact',
      ),
      content: Container(
          color: Theme.of(context).colorScheme.surface,
          key: const GlobalObjectKey('contact'),
          child: Column(
            children: [
              const Text(Contact.headings),
              const Text(Contact.description),
              const Text(Contact.descriptionLocation),
              // Direct Links Section
              const Divider(),
              const Text(Contact.headingsSecondary),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: const Text("youremail@example.com"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const FaIcon(FontAwesomeIcons.linkedin),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      // Replace with your LinkedIn profile
                    },
                    child: const Text(
                      "LinkedIn Profile",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const FaIcon(FontAwesomeIcons.github),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      // Replace with your GitHub profile
                    },
                    child: const Text(
                      "GitHub Profile",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
