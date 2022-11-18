import 'package:flutter/material.dart';
import 'package:tp_list/todo.dart';

class TodoDetail extends StatelessWidget {
  final Todo todo;
  const TodoDetail({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Le titre'),
      ),
      body: Column(children: [
        Text(todo.title),
        Text(todo.id.toString()),
        Text(todo.completed.toString()),
      ]),
    );
  }
}
