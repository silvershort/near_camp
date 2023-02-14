import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/data_layer/api/dto/request/detail_common_dto.dart';
import 'package:near_camp/domain_layer/model/sqfLite/favorites_model.dart';
import 'package:near_camp/domain_layer/provider/sqfLite/favorites_provider.dart';
import 'package:near_camp/domain_layer/provider/tour/detail_common_provider.dart';
import 'package:near_camp/main.dart';
import 'package:near_camp/presentation_layer/component/tour/default_network_image.dart';
import 'package:near_camp/presentation_layer/component/tour/favorites_toggle_button.dart';

class TourDetailScreen extends ConsumerWidget {
  const TourDetailScreen({
    Key? key,
    this.contentId,
    this.contentTypeId,
  }) : super(key: key);
  final String? contentId;
  final String? contentTypeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.d('contentId : $contentId}');
    logger.d('contentTypeId : $contentTypeId}');
    final state = ref.watch(
      detailCommonProvider(
        DetailCommonDto(contentId: contentId!),
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              state.value?.title ?? '',
            ),
            pinned: false,
            floating: true,
            snap: true,
          ),
          state.when(
            data: (data) {
              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    DefaultNetworkImage(
                      url: state.value?.firstimage ?? '',
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(height: 25.0),
                    Container(
                      alignment: AlignmentDirectional.centerEnd,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FavoritesToggleButton(
                        isSelected: ref.read(favoriteProvider.notifier).existItem(
                              FavoritesModel.fromDetail(data),
                            ),
                        onSelected: () {
                          ref.read(favoriteProvider.notifier).addFavorites(
                                FavoritesModel.fromDetail(data),
                              );
                        },
                        onUnSelected: () {
                          ref.read(favoriteProvider.notifier).deleteFavorites(
                                data.contentid,
                              );
                        },
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        data.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    _TitleAndContent(
                      title: tr('detail_tel'),
                      content: data.tel,
                    ),
                    _TitleAndContent(
                      title: tr('detail_address'),
                      content: data.addr1 ?? '',
                    ),
                    _NullSafetyWidget(property: data.overview),
                    const SizedBox(height: 45.0),
                  ],
                ),
              );
            },
            error: (error, stackTrace) {
              return SliverFillRemaining(
                child: Center(
                  child: Text(
                    error.toString(),
                  ),
                ),
              );
            },
            loading: () {
              return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _TitleAndContent extends StatelessWidget {
  const _TitleAndContent({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(style: Theme.of(context).textTheme.bodyMedium, children: [
              TextSpan(
                text: '$title : ',
              ),
              TextSpan(
                text: content,
              ),
            ]),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

class _NullSafetyWidget extends StatelessWidget {
  const _NullSafetyWidget({
    Key? key,
    required this.property,
  }) : super(key: key);
  final String? property;

  @override
  Widget build(BuildContext context) {
    if (property == null) {
      return const SizedBox.shrink();
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              property!,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      );
    }
  }
}
