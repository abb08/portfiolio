import 'package:flutter/material.dart';

import 'package:portfolio/views/sidebar/drawer_items.dart';
import 'package:portfolio/views/sidebar/logo.dart';
import 'package:portfolio/widgets/intro/intro_view.dart';
import 'package:portfolio/widgets/intro/links_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    final colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(24)),
      ),
      backgroundColor: colorScheme.surface,
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drawer Header
            if (!isSmallScreen) const IntroView(),
            if (isSmallScreen) Logo(context: context),

            if (isSmallScreen) const SizedBox(height: 20),
            // Navigation Items

            const DrawerItems(),
            // const Spacer(),
            // if (!isSmallScreen) const SizedBox(height: 10),
            if (!isSmallScreen) const LinksView(),
          ],
        ),
      ),
    );
  }
}
