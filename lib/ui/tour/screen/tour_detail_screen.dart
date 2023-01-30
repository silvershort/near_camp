import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/dto/request/detail_common_dto.dart';
import 'package:near_camp/main.dart';
import 'package:near_camp/provider/api/detail_common_provider.dart';
import 'package:near_camp/ui_component/scaffold/default_app_bar.dart';

class TourDetailScreen extends ConsumerWidget {
  const TourDetailScreen({
    Key? key,
    this.contentId,
    this.contenttypeId,
  }) : super(key: key);
  final String? contentId;
  final String? contenttypeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.d('contentId : $contentId}');
    logger.d('contenttypeId : $contenttypeId}');
    final state = ref.read(detailCommonProvider(DetailCommonDto(contentId: contentId!)));

    return Scaffold(
      appBar: DefaultAppBar(title: '상세화면'),
      body: CustomScrollView(
        slivers: [
          state.when(
            data: (data) {
              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Text(
                      data!.title,
                    ),
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
