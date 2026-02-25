import 'package:flutter/material.dart';

class Customheader extends StatelessWidget{
  final Image imagen;
  final String title;
  final String subtitle;
  final IconData icon;
  //final VoidCallback onTap;

  const Customheader({
    super.key,
    required this.imagen,
    required this.title,
    required this.subtitle,
    required this.icon,
   // required this.onTap
  }); 

@override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: imagen,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}