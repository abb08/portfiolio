import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            url: '',
          ),
          const SizedBox(width: 16),
          _buildIcon(
            icon: FontAwesomeIcons.linkedin,
            hoverMessage: 'LinkedIn',
            url: '',
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
        // Use url_launcher to open the URL
      },
      child: Tooltip(
        message: hoverMessage,
        child: Icon(icon),
      ),
    );
  }
}
