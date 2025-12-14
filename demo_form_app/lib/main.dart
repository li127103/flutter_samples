import 'dart:io';

import 'package:demo_form_app/src/autofill.dart';
import 'package:demo_form_app/src/form_widgets.dart';
import 'package:demo_form_app/src/sign_in_http.dart';
import 'package:demo_form_app/src/validation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:window_size/window_size.dart';

import 'src/http/mock_client.dart';

void main() {
  setupWindow();
  runApp(const FormApp());
}

const double windowWidth = 480;
const double windowHeight = 854;

void setupWindow() {
  if (!kIsWeb &&
      (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle("Form Samples");
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

final demos = [
  Demo(
    name: 'Sign in with HTTP',
    route: 'signin_http',
    builder: (context) => SignInHttpDemo(
      httpClient: mockClient,
    ),
  ),
  Demo(
    name: 'Autofill',
    route: 'autofill',
    builder: (context) => AutoFillDemo(),
  ),
  Demo(
    name: 'Form widgets',
    route: 'form_widgets',
    builder: (context) => const FormWidgetsDemo(),
  ),
  Demo(
    name: 'Validation',
    route: 'validation',
    builder: (context) => const FormValidationDemo(),
  ),
];

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
      routes: [
        for (final demo in demos)
          GoRoute(
            path: demo.route,
            builder: (context, state) => demo.builder(context),
          ),
      ],
    ),
  ],
);

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Form Samples",
      theme: ThemeData(colorSchemeSeed: Colors.teal),
      routerConfig: router,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Samples'),
      ),
      body: ListView(
        children: [...demos.map((d) => DemoTile(demo: d))],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo? demo;

  const DemoTile({super.key, this.demo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo!.name),
      onTap: () {
        context.go('/${demo!.route}');
      },
    );
  }
}

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({required this.name, required this.route, required this.builder});
}
