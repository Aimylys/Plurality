import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class DatabaseHelper {
  static Database? _database;
  static final _tableName = 'your_table_name';

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    // Obtenir le chemin du répertoire d'application spécifique à Android
    String databasesPath = await getDatabasesPath();
    String dbPath = path.join(databasesPath, 'your_database_name.db');

    // Open/create the database at a given path
    return await openDatabase(dbPath, version: 1, onCreate: _createTable);
  }

  Future<void> _createTable(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName(
        id INTEGER PRIMARY KEY,
        name TEXT
      )
    ''');
  }

  Future<int> insertData(Map<String, dynamic> data) async {
    final db = await database;
    return await db.insert(_tableName, data);
  }

// Add more methods for CRUD operations as needed
}
