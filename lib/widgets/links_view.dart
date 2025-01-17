import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/controller/launch_url.dart';
import 'package:portfolio/views/contact/hover_animated_widget.dart';

class LinksView extends StatelessWidget {
  const LinksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIcon(
            context,
            icon: FontAwesomeIcons.github,
            hoverMessage: 'Github',
            url: Links.github,
          ),
          const SizedBox(width: 16),
          _buildIcon(
            context,
            icon: FontAwesomeIcons.linkedin,
            hoverMessage: 'LinkedIn',
            url: Links.linkedin,
          ),
          const SizedBox(width: 16),
          _buildIcon(
            context,
            icon: Icons.email,
            hoverMessage: Links.email,
            url: Links.email,
          ),
          const SizedBox(width: 16),
          _buildIcon(
            context,
            icon: Icons.phone,
            hoverMessage: Links.phoneNo,
            url: Links.phoneNo,
          ),
        ],
      ),
    );
  }

  // Helper method to build a icon with hover animations
  Widget _buildIcon(
    BuildContext context, {
    required IconData icon,
    required String hoverMessage,
    required String url,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return HoverAnimatedWidget(
      onTap: () {
        switch (url) {
          case Links.email:
            sendEmail();
          case Links.phoneNo:
            makePhoneCall();
          default:
            launchLink(url);
        }
      },
      child: Tooltip(
        message: hoverMessage,
        textStyle: textTheme.bodyMedium?.copyWith(
          color: colorScheme.onInverseSurface,
        ),
        decoration: BoxDecoration(
          color: colorScheme.inverseSurface,
          borderRadius: const BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}
