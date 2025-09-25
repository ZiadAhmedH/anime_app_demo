import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime App',
      home:  Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),

        body: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
