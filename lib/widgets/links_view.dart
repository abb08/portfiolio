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
            icon: FontAwesomeIcons.github,
            hoverMessage: 'Github',
            url: Links.github,
          ),
          const SizedBox(width: 16),
          _buildIcon(
            icon: FontAwesomeIcons.linkedin,
            hoverMessage: 'LinkedIn',
            url: Links.linkedin,
          ),
          const SizedBox(width: 16),
          _buildIcon(
            icon: Icons.email,
            hoverMessage: Links.email,
            url: Links.email,
          ),
          const SizedBox(width: 16),
          _buildIcon(
            icon: Icons.phone,
            hoverMessage: Links.phoneNo,
            url: Links.phoneNo,
          ),
        ],
      ),
    );
  }

  // Helper method to build a icon with hover animations
  Widget _buildIcon({
    required IconData icon,
    required String hoverMessage,
    required String url,
  }) {
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
        child: Icon(icon),
      ),
    );
  }
}
