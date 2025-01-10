import 'package:flutter/material.dart';
import 'package:portfolio/widgets/intro_view.dart';
import 'package:portfolio/widgets/links_view.dart';

class HeadingView extends StatelessWidget {
  const HeadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Container(
          color: Theme.of(context).colorScheme.surface,
          child: const Column(
            children: [
              IntroView(),
              LinksView(),
            ],
          )),
    );
  }
}
