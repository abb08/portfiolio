import 'package:flutter/material.dart';
import 'package:portfolio/controller/launch_url.dart';
import 'package:portfolio/widgets/hover_animated_widget.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
    required this.icon,
    required this.label,
    required this.url,
  });

  final IconData icon;
  final String label;
  final String url;

  @override
  Widget build(BuildContext context) {
    return HoverAnimatedWidget(
      onTap: () {
        launchLink(url);
      },
      child: Column(
        children: [
          Icon(icon, size: 20),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}
