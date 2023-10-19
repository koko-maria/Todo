
import 'package:flutter/material.dart';
import 'package:todoy/Screens/Choose_theme.dart';
import 'package:todoy/Screens/create_task.dart';

import 'package:todoy/data/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff24A19C)),
        useMaterial3: true,
      ),
      home: const CreateTask()
    );
  }
}

