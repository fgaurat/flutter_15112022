import 'package:flutter/material.dart';

class TheList extends StatelessWidget {
  TheList({super.key});

  final List<String> items = List.generate(1000, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Le titre'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            print("build item $index");
            return ListTile(
              title: Text(items[index]),
              trailing: const Icon(Icons.more),
            );
          },
        ));
  }
}
