import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tp_list/todo.dart';
import 'package:tp_list/todo_detail.dart';

class TheTodoList extends StatefulWidget {
  const TheTodoList({super.key});

  @override
  State<TheTodoList> createState() => _TheTtodoList();
}

class _TheTtodoList extends State<TheTodoList> {
  Future<List<Todo>> _loadTodos() async {
    // 'https://jsonplaceholder.typicode.com/posts'
    final response = await http.get(Uri.parse('http://10.0.2.2:3000/todos'));
    // final response = await http.get(Uri.parse('http://localhost/3000/todos'));
    final List todoJsonList = jsonDecode(response.body);
    return todoJsonList.map((todoJson) => Todo.fromJson(todoJson)).toList();
  }

  @override
  Widget build(BuildContext context) {
    // return const SafeArea(child: Scaffold(body: Text("Todo List")));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Le titre'),
        ),
        body: Column(
          children: [
            const Text("Liste des Todos"),
            Expanded(
              child: _getFutureBuilder(),
            )
          ],
        ));
  }

  FutureBuilder<List<Todo>> _getFutureBuilder() {
    return FutureBuilder<List<Todo>>(
      future: _loadTodos(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data?[index].title ?? ""),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    Navigator.push(
                      
                        context,
                        MaterialPageRoute(
                          builder: (context) => TodoDetail(
                              todo: snapshot.data?[index] ??
                                  Todo(0, "Erreur", false)),
                        ));
                  },
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
