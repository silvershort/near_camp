import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/data_layer/repository/favorites_repository.dart';
import 'package:near_camp/domain_layer/model/sqfLite/favorites_model.dart';

final favoriteProvider = AsyncNotifierProvider<FavoritesNotifier, List<FavoritesModel>>(FavoritesNotifier.new);

class FavoritesNotifier extends AsyncNotifier<List<FavoritesModel>> {
  late FavoritesRepository _repository;

  @override
  FutureOr<List<FavoritesModel>> build() async {
    _repository = await ref.watch(favoriteRepositoryProvider.future);
    return _repository.select();
  }

  bool existItem(FavoritesModel model) {
    return state.value?.contains(model) ?? false;
  }

  Future<void> addFavorites(FavoritesModel model) async {
    await _repository.insert(model);
    state = AsyncData([model, ...state.value ?? []]);
  }

  Future<void> deleteFavorites(String contentid) async {
    await _repository.delete(contentid);
    state = AsyncData(state.value?.where((element) => element.contentid != contentid).toList() ?? []);
  }
}
