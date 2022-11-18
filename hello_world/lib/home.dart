import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});
  final String name = "Fred";
  Widget _getCenterWidgets() {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text("Hello World"),
      // const Image(image:AssetImage("assets://dart_logo.png")),

      Text(
        "Home - hello world $name",
        style: const TextStyle(fontSize: 25),
      ),
      const Icon(Icons.bolt, size: 50),
      const Text("Hello world 03")
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _getCenterWidgets(),
    );
  }
}