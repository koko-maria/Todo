import 'package:flutter/material.dart';

class Elevated extends StatelessWidget {
  const Elevated({super.key, required this.icons, required this.text}); final IconData icons; final String text;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.primary), onPressed: (){}, icon: Icon(icons, color: Theme.of(context).colorScheme.background , ), label: Text(text));
  }
}