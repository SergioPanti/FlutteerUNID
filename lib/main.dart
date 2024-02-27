import 'package:flutter/material.dart';

import 'screen/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 9, 23, 151)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}



