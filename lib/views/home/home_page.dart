import 'package:flutter/material.dart';
import 'package:portfolio/views/home/app_bar_title.dart';
import 'package:portfolio/views/home/dark_mode_switch.dart';
import 'package:portfolio/views/main_page/main_page.dart';
import 'package:portfolio/views/sidebar/side_navigation_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return Scaffold(
      backgroundColor: colorScheme.surface,
      key: _key,
      appBar: AppBar(
        foregroundColor: colorScheme.primary,
        backgroundColor: colorScheme.surface,
        title: AppBarTitle(
          scrollController: _scrollController,
        ),
        leading: isSmallScreen
            ? IconButton(
                onPressed: () {
                  _key.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu),
              )
            : null,
        actions: const [
          DarkModeSwitch(),
        ],
      ),
      drawer: isSmallScreen ? const SideNavigationBar() : null,
      body: MaxWidthBox(
        maxWidth: 1200,
        backgroundColor: colorScheme.surface,
        child: ResponsiveScaledBox(
          width: ResponsiveValue<double?>(context, conditionalValues: [
            const Condition.equals(name: MOBILE, value: 599),
            const Condition.equals(name: TABLET, value: 839),
            const Condition.between(start: 840, end: 999, value: 999),
            const Condition.between(start: 1000, end: 1200, value: 1200),

            // const Condition.between(start: 840, end: 1200, value: 1200),
            // There are no conditions for width over 1200
            // because the `maxWidth` is set to 1200 via the MaxWidthBox.
          ]).value,
          child: Row(
            children: [
              if (!isSmallScreen) const SideNavigationBar(),
              if (!isSmallScreen)
                const SizedBox(
                  width: 10,
                ),
              MainPage(
                scrollController: _scrollController,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void scrollToWidget(GlobalObjectKey widgetKey) {
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     final context = widgetKey.currentContext;
  //     if (context == null) {
  //       debugPrint('Null');
  //       return;
  //     }
  //     await Scrollable.ensureVisible(
  //       context,
  //       alignment: 0.3, // Positions the widget 30% from the top
  //       duration: const Duration(milliseconds: 300),
  //       curve: Curves.easeInOut,
  //     );
  //   });
  // }
}
