import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/domain_layer/provider/sqfLite/favorites_provider.dart';
import 'package:near_camp/presentation_layer/component/scaffold/default_app_bar.dart';
import 'package:near_camp/presentation_layer/ui/dashboard/widget/favorite_list_tile.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(favoriteProvider);

    return Scaffold(
      appBar: DefaultAppBar(
        title: tr('favorites_title'),
      ),
      body: CustomScrollView(
        slivers: [
          state.when(
            data: (data) {
              if (data.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(
                      tr('favorites_empty'),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                );
              } else {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return FavoriteListTile(item: data[index]);
                    },
                    childCount: data.length,
                  ),
                );
              }
            },
            error: (error, stackTrace) {
              return SliverFillRemaining(
                child: Center(
                  child: Text(
                    tr('common_screen_error', args: [error.toString()]),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              );
            },
            loading: () {
              return const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
