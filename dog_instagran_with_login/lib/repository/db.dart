import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'sql_scripts.dart';

class DB {
  Database? _db;

  DB() {
    getDatabase();
  }

  Future<Database?> getDatabase() async {
    if(_db == null) {
      String path = join(await getDatabasesPath(), "dog_instagran.db");
      _db = await openDatabase(
        path,
        onCreate:(db, version) {
          db.execute(petsTable);
        },
        version: 1,
      );
    }
    return _db;
  }

  Future<List> getAllLines(String table) async {
    return _db!.query(table);
  }

  Future<List<Map<String, Object?>>> getPetWithHasThisEmail(String email) async {
    var list =  await _db!.query(
      "contas", 
      where: "email = ?",
      whereArgs: [email]
    );
    return list;
  }

}