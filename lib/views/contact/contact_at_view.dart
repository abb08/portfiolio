import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/controller/launch_url.dart';
import 'package:portfolio/widgets/hover_animated_widget.dart';
import 'package:portfolio/views/contact/social_icons.dart';

class ContactAtView extends StatelessWidget {
  const ContactAtView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          Contact.headingsSecondary,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 10),
        HoverAnimatedWidget(
          onTap: () {
            sendEmail();
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.email),
              SizedBox(width: 10),
              Text(Links.email),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SocialIcons(
              icon: FontAwesomeIcons.github,
              label: 'GitHub',
              url: Links.github,
            ),
            SizedBox(width: 16),
            SocialIcons(
              icon: FontAwesomeIcons.linkedin,
              label: 'LinkedIn',
              url: Links.linkedin,
            ),
          ],
        ),
      ],
    );
  }
}
