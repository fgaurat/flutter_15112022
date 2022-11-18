import 'package:flutter/material.dart';
import 'package:tp_sqlite_todos/models/todo.dart';
import 'package:tp_sqlite_todos/models/todo_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoForm extends StatefulWidget {
  const TodoForm({super.key});

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final myController = TextEditingController();
  TodoDAO dao = TodoDAO();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Form"),
      ),
      body: Center(
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Todo t = Todo(title: myController.text, completed: false);
          dao.insert(t).then(
            (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('value : ${myController.text}')),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    myController.dispose();

    super.dispose();
  }
}
