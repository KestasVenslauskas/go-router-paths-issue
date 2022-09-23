import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key, required this.screenName});

  final String screenName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(screenName),
          ElevatedButton(
              onPressed: () => context.pop(), child: const Text("Go back")),
        ]),
      ),
    );
  }
}
