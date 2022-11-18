import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _show = true;
  String _label = "Hide";

  toggleShow() {
    setState(() {
      _show = !_show;
      _label = _show ? "Hide" : "Show";
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Le titre")),
        body: Column(children: [
          TextButton(onPressed: toggleShow, child: Text(_label)),
          if (_show) const Text('Bonjour')
        ]),
      ),
    );
  }
}
