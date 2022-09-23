import 'package:flutter/material.dart';
import 'package:flutter_go_router_paths/my_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: <GoRoute>[
    GoRoute(
      name: "home",
      path: '/',
      builder: (context, state) => const MyHomePage(
        title: "Go router paths",
      ),
      routes: [
        GoRoute(
            name: "screenA",
            path: 'screenA',
            builder: (context, state) => const MyScreen(screenName: "ScreenA")),
        GoRoute(
            name: "screenB",
            path: 'screenB',
            builder: (context, state) => const MyScreen(screenName: "ScreenA")),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'GoRouter Example',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () => GoRouter.of(context).push('/screenA'),
                child: const Text('Open screen A')),
            ElevatedButton(
                onPressed: () => GoRouter.of(context).push('/screenB'),
                child: const Text('Open screen B')),
          ],
        ),
      ),
    );
  }
}
