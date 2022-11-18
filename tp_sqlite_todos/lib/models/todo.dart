class Todo {
  int? id;
  final String title;
  final bool completed;

  Todo({this.id, required this.title, required this.completed});

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        completed = json['completed'];
  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'completed': completed};
  }
}
