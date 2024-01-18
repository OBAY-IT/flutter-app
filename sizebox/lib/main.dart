import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my appBar"),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      ),
    );
    const SizedBox(
      height: 20,
      child: Column(
        children: [
          Text('hey'),
          Text('You'),
        ],
      ),
    );

    return const Placeholder();
  }
}
