// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}) super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home(),
        title: 'ToDo App',
      ),;
  }
}
