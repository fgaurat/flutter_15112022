import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int cptValue;
  final Function onIncrement;
  const Counter({super.key, required this.cptValue, required this.onIncrement});

  void click() {
    onIncrement();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('value: $cptValue'),
        IconButton(onPressed: click, icon: const Icon(Icons.plus_one))
      ], 
    );
  }
}
