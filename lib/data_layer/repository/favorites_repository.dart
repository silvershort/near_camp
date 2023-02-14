import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/const/app_const.dart';
import 'package:near_camp/domain_layer/model/sqfLite/favorites_model.dart';
import 'package:near_camp/domain_layer/provider/sqfLite/database_provider.dart';
import 'package:sqflite/sqflite.dart';

final favoriteRepositoryProvider = FutureProvider((ref) async {
  Database database = await ref.watch(databaseProvider.future);
  return FavoritesRepository(database: database);
});

class FavoritesRepository {
  Database database;
  FavoritesRepository({required this.database});

  Future<List<FavoritesModel>> select() async {
    List<Map<String, Object?>> maps = await database.query(
      AppConst.tableName,
    );
    return maps.map((map) => FavoritesModel.fromJson(map)).toList();
  }

  Future<FavoritesModel> insert(FavoritesModel model) async {
    await database.insert(
      AppConst.tableName,
      model.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return model;
  }

  Future<void> update(FavoritesModel model) async {
    await database.update(
      AppConst.tableName,
      model.toJson(),
      where: 'contentid = ?',
      whereArgs: [model.contentid],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return;
  }

  Future<void> delete(String contentid) async {
    await database.delete(
      'favorites',
      where: 'contentid = ?',
      whereArgs: [contentid],
    );
    return;
  }
}
