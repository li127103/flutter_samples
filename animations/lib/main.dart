import 'package:animations/src/basics/basics.dart';
import 'package:animations/src/misc/misc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:io' show Platform;
import 'package:window_size/window_size.dart';

void main() {
  setupWindow();
  runApp(const AnimationSamples());
}

const double windowWidth = 480;
const double windowHeight = 854;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Animation Samples');
    setWindowMinSize(const Size(windowWidth, windowHeight));
    setWindowMaxSize(const Size(windowWidth, windowHeight));
    getCurrentScreen().then((screen) {
      setWindowFrame(
        Rect.fromCenter(
          center: screen!.frame.center,
          width: windowWidth,
          height: windowHeight,
        ),
      );
    });
  }
}

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({required this.name, required this.route, required this.builder});
}

final basicDemos = [
  Demo(
    name: 'AnimatedContainer',
    route: AnimatedContainerDemo.routeName,
    builder: (context) => AnimatedContainerDemo(),
  ),
  Demo(
    name: 'PageRouteBuilder',
    route: PageRouteBuilderDemo.routeName,
    builder: (context) => const PageRouteBuilderDemo(),
  ),
  Demo(
    name: 'Animation Controller',
    route: AnimationControllerDemo.routeName,
    builder: (context) => const AnimationControllerDemo(),
  ),
  Demo(
    name: 'Tweens',
    route: TweenDemo.routeName,
    builder: (context) => const TweenDemo(),
  ),
  Demo(
    name: 'Custom Tween',
    route: CustomTweenDemo.routerName,
    builder: (context) => const CustomTweenDemo(),
  ),
  Demo(
    name: 'Tween Sequences',
    route: TweenSequenceDemo.routeName,
    builder: (context) => const TweenSequenceDemo(),
  ),
  Demo(
    name: 'AnimatedBuilder',
    route: AnimatedBuilderDemo.routeName,
    builder: (context) => AnimatedBuilderDemo(),
  ),
  Demo(
    name: 'Fade Transition',
    route: FadeTransitionDemo.routeName,
    builder: (context) => const FadeTransitionDemo(),
  ),
];

final miscDemos = [
  Demo(
    name: 'Expandable Card',
    route: ExpandCardDemo.routeName,
    builder: (context) => const ExpandCardDemo(),
  ),
];

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        for (final demo in basicDemos)
          GoRoute(
            path: demo.route,
            builder: (context, state) => demo.builder(context),
          ),

        for (final demo in miscDemos)
          GoRoute(
            path: demo.route,
            builder: (context, state) => demo.builder(context),
          ),
      ],
    ),
  ],
);

class AnimationSamples extends StatelessWidget {
  const AnimationSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Animation Samples',
      theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
      routerConfig: router,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Samples ')),
      body: ListView(
        children: [
          ListTile(title: Text('Basics', style: headerStyle)),
          ...basicDemos.map((d) => DemoTitle(demo: d)),
          ListTile(title: Text('Misc', style: headerStyle)),
          ...miscDemos.map((d) => DemoTitle(demo: d)),
        ],
      ),
    );
  }
}

class DemoTitle extends StatelessWidget {
  final Demo demo;

  const DemoTitle({required this.demo, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        context.go('/${demo.route}');
      },
    );
  }
}
