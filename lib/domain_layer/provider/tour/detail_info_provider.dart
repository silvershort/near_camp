import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/data_layer/api/dto/request/detail_information_dto.dart';
import 'package:near_camp/data_layer/repository/_base/base_repository.dart';
import 'package:near_camp/data_layer/repository/detail_info_repository.dart';
import 'package:near_camp/domain_layer/model/tour/detail_info_model.dart';
import 'package:near_camp/domain_layer/provider/_base/detail_base_notifier.dart';

final detailInfoProvider = AsyncNotifierProvider.family.autoDispose<DetailInfoNotifier, DetailInfoModel, DetailInfoDto>(DetailInfoNotifier.new);

class DetailInfoNotifier extends DetailBaseNotifier<DetailInfoModel, DetailInfoDto> {
  @override
  IBaseRepository<DetailInfoModel, DetailInfoDto> initRepository() {
    return ref.watch(detailInfoRepositoryProvider);
  }
}