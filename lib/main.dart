import 'package:flutter/material.dart';
import 'package:portfolio/views/side_bar.dart';
import 'package:portfolio/views/main_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = SidebarXController(
    selectedIndex: 0,
    extended: true,
  );
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: canvasColor,
        title: const Text('Portfolio'),
        leading: isSmallScreen
            ? IconButton(
                onPressed: () {
                  _key.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu),
              )
            : null,
      ),
      drawer: isSmallScreen ? SideBar(controller: _controller) : null,
      body: Row(
        children: [
          if (!isSmallScreen)
            SideBar(
              controller: _controller,
            ),
          MainPage(
            controller: _controller,
          ),
        ],
      ),
    );
  }
}
