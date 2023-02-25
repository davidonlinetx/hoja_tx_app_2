import 'package:hoja_tx_app_2/dataBase/db.dart';
import 'package:sqflite/sqflite.dart';

class Crud {
  final String table;
  const Crud(this.table);

  Future<Database> get database async {
    return await DB().open();
  }

  query(sql, arguments) async {
    final db = await database;
    return await db.rawQuery(sql, arguments);
  }

  update(data) async {
    final db = await database;
    return await db.update(
      table,
      data,
      where: "id = ?",
      whereArgs: [
        data["id"],
      ],
    );
  }

  insert(data) async {
    final db = await database;
    return await db.insert(
      table,
      data,
    );
  }

  delete(int id) async {
    final db = await database;
    return await db.delete(
      table,
      where: "id = ?",
      whereArgs: ["id"],
    );
  }
}
