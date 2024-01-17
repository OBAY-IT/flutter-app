import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Obay.com"),
          ),
          backgroundColor: Colors.deepPurple[400],
        ),
        body: const Center(
          child: Text("learn to code with Dmc"),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
    ),
  );
}
