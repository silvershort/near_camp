import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/model/_common/pagination.dart';
import 'package:near_camp/model/location_based_model.dart';
import 'package:near_camp/provider/api/location_based_provider.dart';
import 'package:near_camp/ui/dashboard/widget/tour_list_tile.dart';

class TourListScreen extends ConsumerWidget {
  const TourListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Pagination<LocationBasedModel>> asyncState = ref.watch(locationBaseProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: NotificationListener<ScrollEndNotification>(
          onNotification: (ScrollEndNotification notification) {
            if (notification.metrics.extentAfter == 0) {
              ref.read(locationBaseProvider.notifier).loadMore();
              return true;
            }
            return false;
          },
          child: CustomScrollView(
            slivers: [
              asyncState.when(
                skipError: true,
                data: (data) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return TourListTile(item: data.item[index]);
                      },
                      childCount: data.item.length,
                    ),
                  );
                },
                error: (error, stackTrace) {
                  return SliverFillRemaining(
                    child: Center(
                      child: Text(
                        '에러가 발생했습니다. : ${error}',
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
        ),
      ),
    );
  }
}
