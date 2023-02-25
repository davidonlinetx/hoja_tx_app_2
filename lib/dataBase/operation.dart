import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Operation {
  Future<Database> _openDB() async {
    return openDatabase(
      join(await getDatabasesPath(), 'ingresos.db'),
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE notes 
          (id INTEGER PRIMARY KEY, 
          title TEXT, 
          content TEXT)
          ''', );
      },
      version: 1
    );
  }

  //static Future<void> insert()
}
