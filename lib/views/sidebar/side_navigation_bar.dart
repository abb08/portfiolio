import 'package:flutter/material.dart';
import 'package:portfolio/views/sidebar/drawer_items.dart';
import 'package:portfolio/widgets/intro_view.dart';
import 'package:portfolio/widgets/links_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SideNavigationBar extends StatefulWidget {
  const SideNavigationBar({super.key});

  @override
  State<SideNavigationBar> createState() => _SideNavigationBarState();
}

class _SideNavigationBarState extends State<SideNavigationBar> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    final colorScheme = Theme.of(context).colorScheme;
    // final textTheme = Theme.of(context).textTheme;
    return Drawer(
      backgroundColor: colorScheme.surface,
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drawer Header
            if (!isSmallScreen) const IntroView(),
            // Navigation Items
            const DrawerItems(),
            // const Spacer(),
            if (!isSmallScreen) const SizedBox(height: 20),
            if (!isSmallScreen) const LinksView(),
          ],
        ),
      ),
    );

    // return Drawer(
    //   backgroundColor: colorScheme.surface,
    //   child: LayoutBuilder(builder: (context, constraints) {
    //     return SingleChildScrollView(
    //       padding: EdgeInsets.zero,
    //       child: Container(
    //         decoration: BoxDecoration(
    //           color: colorScheme.surface,
    //         ),
    //         child: ConstrainedBox(
    //           constraints: constraints.copyWith(
    //             minHeight: constraints.maxHeight,
    //             maxHeight: double.infinity,
    //           ),
    //           child: const IntrinsicHeight(
    //             child: SafeArea(
    //               child: Column(
    //                 // crossAxisAlignment: CrossAxisAlignment.stretch,
    //                 children: [
    //                   Column(
    //                     children: [
    //                       // Drawer Header
    //                       IntroView(),
    //                       // Navigation Items
    //                       DrawerItems(),
    //                     ],
    //                   ),
    //                   Expanded(
    //                     child: Align(
    //                       alignment: Alignment.bottomLeft,
    //                       child: Column(
    //                         mainAxisSize: MainAxisSize.min,
    //                         children: [
    //                           LinksView(),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   }),
    // );
  }

  // double getWidth(BuildContext context) {
  //   final isMobile = ResponsiveBreakpoints.of(context).isMobile;
  //   final isTablet = ResponsiveBreakpoints.of(context).isTablet;
  //   final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

  //   final currentWidth = MediaQuery.sizeOf(context).width;

  //   if (isMobile) {
  //     return 200;
  //   }
  //   if (isTablet) {
  //     return currentWidth / 3;
  //   }
  //   if (isDesktop) {
  //     return currentWidth / 2;
  //   }
  //   return 200;
  // }
}
