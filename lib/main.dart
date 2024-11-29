import 'package:flutter/material.dart';
import 'package:portfolio/views/sidebar/side_bar.dart';
import 'package:portfolio/views/main_page/main_page.dart';
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
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.dark),
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
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = SidebarXController(
    selectedIndex: 0,
    extended: true,
  );

  final _key = GlobalKey<ScaffoldState>();
  bool _value = true;

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
    final isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return Scaffold(
      key: _key,
      appBar: AppBar(
        foregroundColor: Colors.white,
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
        actions: [
          FilledButton(
            onPressed: () {
              scrollToWidget(const GlobalObjectKey('contact'));
            },
            child: const Text('Contact'),
          ),
          Switch(
            value: _value,
            thumbIcon: thumbIcon,
            onChanged: (newValue) {
              setState(() {
                _value = newValue;
              });
            },
          )
        ],
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
}
