import 'package:flutter/material.dart';
import 'package:hello_world/counter.dart';
import 'package:hello_world/home.dart';

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
       
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Le titre de l\'application')),
        body: Column(children: const [
          Home(),
          Counter()
        ]),
      ),
    );
  }

 
}
