import 'package:flutter/material.dart';
import 'package:portfolio/widgets/intro_view.dart';
import 'package:portfolio/widgets/links_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
    required SidebarXController controller,
  }) : _controller = controller;

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // final textTheme = Theme.of(context).textTheme;

    return SidebarX(
      showToggleButton: false,
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: colorScheme.secondary,
        textStyle: TextStyle(color: colorScheme.onSurface),
        // selectedTextStyle: TextStyle(color: colorScheme.onSurface),
        hoverTextStyle: TextStyle(
          color: colorScheme.onSecondary,
          fontWeight: FontWeight.w500,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colorScheme.surface),
        ),
        // selectedItemDecoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10),
        //   border: Border.all(
        //     color: colorScheme.outline.withOpacity(0.37),
        //   ),
        //   gradient: LinearGradient(
        //     colors: [
        //       colorScheme.secondary,
        //       colorScheme.surface
        //     ],
        //   ),
        //   boxShadow: [
        //     BoxShadow(
        //       color: colorScheme.shadow,
        //       blurRadius: 30,
        //     )
        //   ],
        // ),
        iconTheme: IconThemeData(
          color: colorScheme.onSurface,
          size: 20,
        ),
        // selectedIconTheme: const IconThemeData(
        //   color: colorScheme.onSurface,
        //   size: 20,
        // ),
      ),
      extendedTheme: SidebarXTheme(
        width: getWidth(context),
        decoration: BoxDecoration(
          color: colorScheme.surface,
        ),
      ),
      headerDivider:
          Divider(color: colorScheme.outline.withOpacity(0.3), height: 1),
      headerBuilder: (context, extended) {
        return IntroView();
      },
      footerDivider:
          Divider(color: colorScheme.outline.withOpacity(0.3), height: 1),
      footerBuilder: (context, extended) {
        return const LinksView();
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'About',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('about'));
            dismissDrawer(context);
          },
        ),
        SidebarXItem(
          icon: Icons.search,
          label: 'Skills',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('skills'));
            dismissDrawer(context);
          },
        ),
        SidebarXItem(
          icon: Icons.people,
          label: 'Experience',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('experience'));
            dismissDrawer(context);
          },
        ),
        SidebarXItem(
          icon: Icons.favorite,
          label: 'Projects',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('project'));
            dismissDrawer(context);
          },
        ),
        SidebarXItem(
          icon: Icons.favorite,
          label: 'Contact',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('contact'));
            dismissDrawer(context);
          },
        ),
      ],
    );
  }

  void scrollToWidget(GlobalObjectKey widgetKey) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final context = widgetKey.currentContext;
      if (context == null) {
        debugPrint('Null');
        return;
      }
      await Scrollable.ensureVisible(
        context,
        alignment: 0.3, // Positions the widget 30% from the top
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void dismissDrawer(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerThan(TABLET)) {
      Navigator.of(context).pop();
    }
  }

  double getWidth(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final isTablet = ResponsiveBreakpoints.of(context).isTablet;
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    final currentWidth = MediaQuery.sizeOf(context).width;

    if (isMobile) {
      return 200;
    }
    if (isTablet) {
      return currentWidth / 3;
    }
    if (isDesktop) {
      return currentWidth / 2;
    }
    return 200;
  }
}
