import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/domain_layer/model/_base/pagination.dart';
import 'package:near_camp/domain_layer/model/tour/location_based_model.dart';
import 'package:near_camp/domain_layer/provider/geolocator/geolocator_dto_provider.dart';
import 'package:near_camp/domain_layer/provider/tour/location_based_provider.dart';
import 'package:near_camp/presentation_layer/component/scaffold/default_app_bar.dart';
import 'package:near_camp/presentation_layer/ui/dashboard/widget/tour_list_tile.dart';

class TourListScreen extends ConsumerWidget {
  const TourListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Pagination<LocationBasedModel>> asyncState = ref.watch(locationBaseProvider(ref.watch(geolocatorModelProvider)));

    return Scaffold(
      appBar: DefaultAppBar(
        title: tr('list_title'),
      ),
      body: NotificationListener<ScrollEndNotification>(
        onNotification: (ScrollEndNotification notification) {
          if (notification.metrics.extentAfter == 0) {
            ref.read(locationBaseProvider(ref.watch(geolocatorModelProvider)).notifier).loadMore();
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
                      tr('common_screen_error', args: [error.toString()])
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
    );
  }
}
