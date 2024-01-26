import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String myTitle = "App Layout 2";

    return Material(
      title: myTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(myTitle),
        ),
      ),
    );
  }
}
