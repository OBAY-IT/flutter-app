import 'package:flutter/material.dart';

void main() {
  runApp(FloatingButtonDemo());
}

class FloatingButtonDemo extends StatefulWidget {
  const FloatingButtonDemo({super.key});

  @override
  State<FloatingButtonDemo> createState() => _FloatingButtonDemoState();
}

class _FloatingButtonDemoState extends State<FloatingButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        onPressed: () {
          openDialog();
        },
        label: const Text('Task'),
        icon: const Icon(Icons.add, color: Colors.white, size: 25),
      ),
    ));
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("New Task"),
          content: TextField(
            decoration: InputDecoration(hintText: 'Enter your Task'),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text('SUBMIT'),
            )
          ],
        ),
      );
}
