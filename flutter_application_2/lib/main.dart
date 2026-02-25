import 'package:flutter/material.dart';

void main() {
  runApp(
    const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("First route"),),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MainApp(),));
            }, 
              child: Text('Hello World!'),
            ),
        ),
      );
  }
}

class MainApp2 extends StatelessWidget {
  const MainApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("First route"),),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            }, 
             child: Text('Hello World!'),
            ),
        ),
      ),
    );
  }
}
