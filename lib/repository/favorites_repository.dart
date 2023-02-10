import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/model/sqfLite/favorites_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class FavoritesRepository extends Notifier<Database> {
  @override
  Database build() {

  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'favorites.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createTable,
    );
  }

  Future<void> _createTable(Database db, int version) async {
    await db.execute('''
      CREATE TABLE favorites(
        contentid TEXT PRIMARY KEY AUTOINCREMENT,
        contenttypeid TEXT NOT NULL,
        title TEXT NOT NULL,
        firstimage TEXT
      )
    ''');
  }

  Future<List<FavoritesModel>> getFavoritesList() async {
    await state.query(
      'favorites',
    );
  }
}
