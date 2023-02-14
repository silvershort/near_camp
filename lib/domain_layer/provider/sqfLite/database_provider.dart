import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/const/app_const.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final databaseProvider = FutureProvider((ref) async {
  return await AppDatabase().database;
});

class AppDatabase {
  late Database _database;

  Future<Database> get database async {
    _database = await _initDB();
    return _database;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), '${AppConst.tableName}.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createTable,
    );
  }

  Future<void> _createTable(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ${AppConst.tableName}(
        contentid TEXT PRIMARY KEY,
        contenttypeid TEXT NOT NULL,
        title TEXT NOT NULL,
        firstimage TEXT
      )
    ''');
  }
}