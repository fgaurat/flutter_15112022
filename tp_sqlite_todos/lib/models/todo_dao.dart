import 'package:sqflite/sqflite.dart';
import 'package:tp_sqlite_todos/models/todo.dart';
import 'package:path/path.dart';

class TodoDAO {
  late Future<Database> database;

  TodoDAO() {
    getDatabasesPath().then((databaseDir) =>
        database = openDatabase(join(databaseDir, 'todos_database.db')));
  }

// Define a function that inserts dogs into the database
  Future<void> insert(Todo todo) async {
    final db = await database;

    await db.insert(
      'todos',
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
