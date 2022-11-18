Map getTodo(int id) {
  Map todo = {"id": id, "title": "Todo id : $id", "completed": true};
  return todo;
}

Future<Map> getTodoAsync(int id) async {
  Map todo = {"id": id, "title": "Todo id : $id", "completed": true};
  return Future<Map>.delayed(Duration(seconds: 1), () => todo);
}

void main(List<String> args) async {
  Map todo = getTodo(1);
  print(todo['title']);
  // Future<Map> todo2 = getTodoAsync(1);
  // todo2.then((Map the_todo) {
  //   print(the_todo);
  //   getTodoAsync(the_todo['id'] + 1).then((value) => print(value));
  // });
  // Map todo2 = await getTodoAsync(2);
  // print(todo2['title']);
  // Map todo3 = await getTodoAsync(todo2['id'] + 1);
  // print(todo3['title']);

  Future<Map> fTodo2 = getTodoAsync(2);
  Future<Map> fTodo3 = getTodoAsync(3);
  Future<Map> fTodo4 = getTodoAsync(4);
  Future<Map> fTodo5 = getTodoAsync(5);

  List<Future<Map>> l = [fTodo2, fTodo3, fTodo4, fTodo5];
  print("after");
  print("after");
  print("after");
  print("after");

  List<Map> m = await Future.wait(l);
  for (var data in m) {
    print(data);
  }
}
