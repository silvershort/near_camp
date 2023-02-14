import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/data_layer/api/dto/request/detail_common_dto.dart';
import 'package:near_camp/data_layer/repository/_base/base_repository.dart';
import 'package:near_camp/data_layer/repository/detail_common_repository.dart';
import 'package:near_camp/domain_layer/model/tour/detail_common_model.dart';
import 'package:near_camp/domain_layer/provider/_base/detail_base_notifier.dart';

final detailCommonProvider = AsyncNotifierProvider.family.autoDispose<DetailCommonNotifier, DetailCommonModel, DetailCommonDto>(DetailCommonNotifier.new);

class DetailCommonNotifier extends DetailBaseNotifier<DetailCommonModel, DetailCommonDto> {
  @override
  IBaseRepository<DetailCommonModel, DetailCommonDto> initRepository() {
    return ref.watch(detailCommonRepository);
  }
}