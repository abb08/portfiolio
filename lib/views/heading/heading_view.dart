import 'package:flutter/material.dart';
import 'package:portfolio/widgets/intro/intro_view.dart';
import 'package:portfolio/widgets/intro/links_view.dart';

class HeadingView extends StatelessWidget {
  const HeadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: const Column(
          children: [
            IntroView(),
            LinksView(),
          ],
        ),
      ),
    );
  }
}
