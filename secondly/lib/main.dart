import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                "Obay.com",
                style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.sp,
            children: [
              Container(
                color: const Color.fromARGB(255, 33, 243, 243),
                width: 150.0,
                height: 150.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20.0),
                margin: EdgeInsets.all(0.0),
                child: const Text('Colum One'),
              ),
              Container(
                color: Colors.blue,
                width: 150.0,
                height: 150.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20.0),
                margin: EdgeInsets.all(0.0),
                child: const Text('Colum two'),
              ),
              Container(
                color: const Color.fromARGB(255, 79, 33, 243),
                width: 150.0,
                height: 150.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20.0),
                margin: EdgeInsets.all(0.0),
                child: const Text('Colum three'),
              ),
            ],
          ))),
    );
  }
}
