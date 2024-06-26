import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:yesheis/core/constans/constans.dart';
import 'package:yesheis/core/models/database/database_model.dart';

class DatabaseService extends GetxService {
  static DatabaseService get to => Get.find();
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, Constans.DB_SAVE_VERSE);

    print("Database path: $path");

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        print("Creating table save_verse_db");
        await db.execute(
          'CREATE TABLE ${Constans.FIELD_DB}(id TEXT PRIMARY KEY, abbr_verse TEXT, text TEXT)',
        );
        print("Table save_verse_db created");
      },
    );
  }

  // Metode untuk memasukkan catatan
  Future<void> insertVerse(DatabaseModel databaseModel) async {
    final db = await _database!;
    await db.insert(
      Constans.FIELD_DB,
      databaseModel.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<DatabaseModel>> getVerseSaved() async {
    final db = await _database;
    final List<Map<String, dynamic>> maps = await db!.query(Constans.FIELD_DB);

    return List.generate(maps.length, (i) {
      return DatabaseModel.fromJson(maps[i]);
    });
  }

  Future<void> deleteSavedVerse(String id) async {
    final db = await _database!;
    await db.delete(
      Constans.FIELD_DB,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
