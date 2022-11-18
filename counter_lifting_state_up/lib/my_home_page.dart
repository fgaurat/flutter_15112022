import 'package:counter_lifting_state_up/counter.dart';
import 'package:counter_lifting_state_up/show_counter_value.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:$_counter',
              ),
              Counter(cptValue: _counter, onIncrement: _incrementCounter),
              ShowCounterValue(cpt: _counter)
            ],
          ),
        ));
  }
}
