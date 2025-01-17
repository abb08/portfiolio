import 'dart:ui';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/theme/theme.dart';
import 'package:portfolio/views/main_page/main_page.dart';
import 'package:portfolio/views/sidebar/side_navigation_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';
// import 'package:sidebarx/sidebarx.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.savedThemeMode});

  final AdaptiveThemeMode? savedThemeMode;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: AppTheme.light,
      dark: AppTheme.dark,
      initial: savedThemeMode ?? AdaptiveThemeMode.dark,
      debugShowFloatingThemeButton: true,
      builder: (theme, darkTheme) {
        return MaterialApp(
          title: 'Flutter Demo',

          scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
          // theme: ThemeData(
          //   colorScheme: ColorScheme.fromSeed(
          //     seedColor: Colors.deepPurple,
          //     brightness: Brightness.dark,
          //   ),
          //   useMaterial3: true,
          // ),
          // theme: ThemeData(
          //   useMaterial3: true,
          //   colorScheme: lightColorScheme,
          // ),
          // darkTheme: ThemeData(
          //   useMaterial3: true,
          //   colorScheme: darkColorScheme,
          // ),
          // theme: AppTheme.light,
          // darkTheme: AppTheme.dark,
          // themeMode: ThemeMode.dark,
          theme: theme,
          darkTheme: darkTheme,

          builder: (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              // const Breakpoint(start: 0, end: 450, name: MOBILE),
              // const Breakpoint(start: 451, end: 800, name: TABLET),
              // const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              // const Breakpoint(start: 1921, end: double.infinity, name: '4K'),

              const Breakpoint(start: 0, end: 599, name: MOBILE),
              const Breakpoint(start: 600, end: 839, name: TABLET),
              const Breakpoint(start: 840, end: 1199, name: DESKTOP),
              const Breakpoint(start: 1200, end: double.infinity, name: '4K'),
            ],
          ),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}

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

  final WidgetStateProperty<Icon?> thumbIcon =
      WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.dark_mode_outlined);
      }
      return const Icon(Icons.light_mode_outlined);
    },
  );

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // final textTheme = Theme.of(context).textTheme;
    final isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return Scaffold(
      backgroundColor: colorScheme.surface,
      key: _key,
      appBar: AppBar(
        foregroundColor: colorScheme.primary,
        backgroundColor: colorScheme.surface,
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: _scrollToTop,
            child: Row(
              children: [
                Icon(
                  AntDesign.code_fill,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 5),
                const Text('Portfolio'),
              ],
            ),
          ),
        ),
        leading: isSmallScreen
            ? IconButton(
                onPressed: () {
                  _key.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu),
              )
            : null,
        actions: [
          // FilledButton(
          //   onPressed: () {
          //     scrollToWidget(const GlobalObjectKey('contact'));
          //   },
          //   child: const Text('Contact'),
          // ),
          Switch(
            value: AdaptiveTheme.of(context).mode.isDark,
            thumbIcon: thumbIcon,
            onChanged: (value) {
              if (value) {
                AdaptiveTheme.of(context).setDark();
              } else {
                AdaptiveTheme.of(context).setLight();
              }
            },
          )
        ],
      ),
      drawer: isSmallScreen ? const SideNavigationBar() : null,
      body: MaxWidthBox(
        maxWidth: 1200,
        backgroundColor: colorScheme.surface,
        child: ResponsiveScaledBox(
          width: ResponsiveValue<double?>(context, conditionalValues: [
            const Condition.equals(name: MOBILE, value: 599),
            const Condition.between(start: 600, end: 839, value: 839),
            const Condition.between(start: 840, end: 1200, value: 1200),
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

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }
}

class NoThumbScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
      };
}
