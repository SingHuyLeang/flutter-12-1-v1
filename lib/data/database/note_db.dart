import 'package:sqflite/sqflite.dart';

class NoteDB {
  final String _dbName = "note_db";
  final int _dbVersion = 1;

  static const String _tableName = "notes";
  static const String _id = "id";
  static const String _title = "title";
  static const String _content = "content";
  static const String _createAt = "create_at";

  Future<Database> init() async {
    final dbPath = await getDatabasesPath();
    const sql = """
      CREATE TABLE IF NOT EXISTS $_tableName (
        $_id INTEGER AUTO_INCREMENT PRIMARY KEY NULL,
        $_title TEXT NULL,
        $_content TEXT NULL,
        $_createAt DATETIME DEFAULT CURRENT_TIMESTAMP NULL
      )
    """;
    return openDatabase(
      "$dbPath/$_dbName",
      version: _dbVersion,
      onCreate: (db, version) => db.execute(sql),
    );
  }
}
