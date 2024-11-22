import 'package:flutter/material.dart';
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
    // return Container(
    //   color: Colors.lightBlue,
    //   width: MediaQuery.of(context).size.width / 2,
    //   child: Column(
    //     children: [
    //       const IntroView(),
    //       const LinksView(),
    //       MenuView(),
    //     ],
    //   ),
    // );
    return SidebarX(
      showToggleButton: false,
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: scaffoldBackgroundColor,

        textStyle: const TextStyle(color: Colors.white),
        selectedTextStyle: const TextStyle(color: Colors.white),
        hoverTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        // selectedItemDecoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10),
        //   border: Border.all(
        //     color: actionColor.withOpacity(0.37),
        //   ),
        //   gradient: const LinearGradient(
        //     colors: [accentCanvasColor, canvasColor],
        //   ),
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.black.withOpacity(0.28),
        //       blurRadius: 30,
        //     )
        //   ],
        // ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return const SizedBox(
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            // child: Image.asset('assets/images/avatar.png'),
          ),
        );
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
}

const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
