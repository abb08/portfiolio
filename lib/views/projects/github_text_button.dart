import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/controller/launch_url.dart';
import 'package:portfolio/widgets/hover_animated_widget.dart';

class GithubTextButton extends StatelessWidget {
  const GithubTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return HoverAnimatedWidget(
      defaultTextStyle: textTheme.bodyLarge?.copyWith(
        color: colorScheme.onSurface,
      ),
      hoverTextStyle: textTheme.bodyLarge?.copyWith(
        color: colorScheme.primary,
      ),
      onTap: () {
        launchLink(Links.githubRepository);
      },
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 20),
          Text('View Github Repository'),
          SizedBox(width: 5),
          Icon(Icons.outbound_outlined)
        ],
      ),
    );
  }
}
