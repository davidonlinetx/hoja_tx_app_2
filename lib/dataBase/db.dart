import 'package:hoja_tx_app_2/dataBase/db_table.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  String name = 'Ingresos';
  int version = 1;
  Future<Database> open() async {
    String path = join(await getDatabasesPath());
    return openDatabase(
      path,
      version: version,
      onConfigure: onConfigure,
      onCreate: onCreate,
    );
    
  }
}

onConfigure(Database db) async {
  await db.execute("PRAGMA foreign_keis = ON");
}

onCreate(Database db, int version) async {
  DBTable.table.forEach((element) async => db.execute(element));
}
