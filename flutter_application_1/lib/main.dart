import 'package:flutter/material.dart';
import './widgets/CustomCard.dart';
import 'widgets/CustomHeader.dart';

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
          title: const Text("App Demo"),
          actions: <Widget>[
            IconButton(onPressed: () {},
              icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, 
              icon: Icon(Icons.circle)),
            IconButton(onPressed: () {},
             icon: Icon(Icons.circle_outlined)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Exporar Categorías", style: TextStyle(fontSize: 24, )),
              ),
              SizedBox(height: 50),
              Text("Usuario", style: TextStyle(fontSize: 24, ), textAlign: TextAlign.center),
              SizedBox(height: 20),
              Customheader(
                imagen: Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/3135/3135715.png")),
                title: "Marcos Gomez",
                subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                icon: Icons.arrow_forward_ios,
              ),
              SizedBox(height: 30),
              Expanded(
                child: Column(
                  children: [
                    Text("Categorías", style: TextStyle(fontSize: 24)),
                    SizedBox(height: 20),
                    CustomCard(
                      title: "Hola",
                      subtitle: "gorditos",
                      icon: Icons.abc,
                    ),
                    SizedBox(height: 12),
                    CustomCard(
                      title: "Hola",
                      subtitle: "gorditos",
                      icon: Icons.abc,
                    ),
                    SizedBox(height: 12),
                    CustomCard(
                      title: "Hola",
                      subtitle: "gorditos",
                      icon: Icons.abc,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.circle), 
              label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle), 
              label: 'Buscar'),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'Contactos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle), 
              label: 'Perfil'),
          ],
        ),
      ),
    );
  }
}
