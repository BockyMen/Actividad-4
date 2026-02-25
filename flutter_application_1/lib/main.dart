import 'package:flutter/material.dart';
import './widgets/CustomCard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          title: const Text('AppBar Demo'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.star)),
            IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          ],
        ),
        body: const Center(
          child: Column(
            children: [
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.sailing_sharp,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.sailing_sharp,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.sailing_sharp,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.sailing_sharp,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Home"),
          ],
        ),
      ),
    );
  }
}
