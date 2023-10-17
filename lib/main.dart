
import 'package:flutter/material.dart';
import 'package:todoy/Screens/create_account.dart';
import 'package:todoy/Screens/email_screen.dart';

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
      home: const EmailScreen()
    );
  }
}

