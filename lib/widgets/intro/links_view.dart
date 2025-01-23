import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/intro/icons_view.dart';

class LinksView extends StatelessWidget {
  const LinksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconsView(
            context: context,
            icon: FontAwesomeIcons.github,
            hoverMessage: 'Github',
            url: Links.github,
          ),
          const SizedBox(width: 16),
          IconsView(
            context: context,
            icon: FontAwesomeIcons.linkedin,
            hoverMessage: 'LinkedIn',
            url: Links.linkedin,
          ),
          const SizedBox(width: 16),
          IconsView(
            context: context,
            icon: Icons.email,
            hoverMessage: Links.email,
            url: Links.email,
          ),
          const SizedBox(width: 16),
          IconsView(
            context: context,
            icon: Icons.phone,
            hoverMessage: Links.phoneNo,
            url: Links.phoneNo,
          ),
        ],
      ),
    );
  }
}
