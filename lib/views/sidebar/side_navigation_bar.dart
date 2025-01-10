import 'package:flutter/material.dart';
import 'package:portfolio/views/sidebar/drawer_items.dart';
import 'package:portfolio/widgets/intro_view.dart';
import 'package:portfolio/widgets/links_view.dart';

class SideNavigationBar extends StatefulWidget {
  const SideNavigationBar({super.key});

  @override
  State<SideNavigationBar> createState() => _SideNavigationBarState();
}

class _SideNavigationBarState extends State<SideNavigationBar> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // final textTheme = Theme.of(context).textTheme;
    // return Drawer(
    //   backgroundColor: colorScheme.surface,
    //   child: SingleChildScrollView(
    //     padding: EdgeInsets.zero,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [
    //         // Drawer Header
    //         IntroView(),
    //         // Navigation Items
    //         const DrawerItems(),
    //         // const Spacer(),
    //         const LinksView(),
    //       ],
    //     ),
    //   ),
    // );

    return Drawer(
      backgroundColor: colorScheme.surface,
      child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Container(
            decoration: BoxDecoration(
              color: colorScheme.surface,
            ),
            child: ConstrainedBox(
              constraints: constraints.copyWith(
                minHeight: constraints.maxHeight,
                maxHeight: double.infinity,
              ),
              child: IntrinsicHeight(
                child: SafeArea(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          // Drawer Header
                          IntroView(),
                          // Navigation Items
                          const DrawerItems(),
                        ],
                      ),
                      const Expanded(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                LinksView(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
