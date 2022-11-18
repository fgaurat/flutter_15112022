import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _cpt = 0;

  void _incCounter(){
    setState(() {
    _cpt++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("_cpt : $_cpt"),
        IconButton(onPressed: _incCounter, icon: const Icon(Icons.plus_one))

      ]),
    );
  }
}