import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            height: 50.0,
            color: Colors.blueGrey[700]?.withOpacity(0.3),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Contact Me',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      content: Container(
          key: const GlobalObjectKey('contact'),
          color: Colors.purpleAccent,
          child: Column(
            children: [
              const Text("Let's Build Something Together!"),
              const Text(
                "Have a project idea, need a developer, or just want to connect? I'd love to hear from you. Let's create something amazing together!",
              ),
              const Text(
                  "Based in Kathmandu, Nepal, open to remote opportunities."),
              // Direct Links Section
              const Divider(),
              const Text(
                "You can reach me at:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
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
