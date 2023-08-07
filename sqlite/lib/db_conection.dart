import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqlite/script_sql.dart';

class DBConection {
  static Database? _db;

  static Future<Database?> _get() async {
    if(_db == null) {
      var path = join(await getDatabasesPath(), "text_app.db");
      _db = await openDatabase(
        path,
        onCreate: (db, version) {
          db.execute(creatTable);
        },
        version: 1,
      );
    }
    return _db;
  }

  static Future<List<Map<String, dynamic>>?> readAllLines() async {
    var db = await _get(); 
    return await db?.query("notes");
  }

  static Future<void> saveLine(Nota nota) async {
    var db = await _get();
    db!.insert("notes", nota.toMap());
  }

  static Future<void> deletarLinha(Nota nota) async {
    var db = await _get();
    db!.delete("notes", where: "titulo = ? AND nota = ?", whereArgs: [nota.titulo, nota.nota]);
  }
}

class Nota {
  String? titulo;
  String? nota;

  Nota({this.titulo, this.nota});

  Map<String, dynamic> toMap() {
    return {
      "titulo" : titulo,
      "nota" : nota,
    };
  }
}