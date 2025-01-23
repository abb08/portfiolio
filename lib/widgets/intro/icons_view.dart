import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/controller/launch_url.dart';
import 'package:portfolio/views/contact/hover_animated_widget.dart';

class IconsView extends StatelessWidget {
  const IconsView({
    super.key,
    required this.context,
    required this.icon,
    required this.hoverMessage,
    required this.url,
  });

  final BuildContext context;
  final IconData icon;
  final String hoverMessage;
  final String url;

  @override
  Widget build(BuildContext context) {
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
