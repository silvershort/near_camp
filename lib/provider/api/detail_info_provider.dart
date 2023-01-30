import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/dto/provider/detail_info_dto_provider.dart';
import 'package:near_camp/api/dto/request/detail_information_dto.dart';
import 'package:near_camp/model/detail_info_model.dart';
import 'package:near_camp/provider/_common/detail_base_notifier.dart';
import 'package:near_camp/repository/_common/base_repository.dart';
import 'package:near_camp/repository/detail_info_repository.dart';

final detailInfoProvider = AsyncNotifierProvider.family.autoDispose<DetailInfoNotifier, DetailInfoModel?, DetailInformationDto>(DetailInfoNotifier.new);

class DetailInfoNotifier extends DetailBaseNotifier<DetailInfoModel?, DetailInformationDto> {
  @override
  IBaseRepository<DetailInfoModel?, DetailInformationDto> initRepository() {
    return ref.watch(detailInfoRepositoryProvider);
  }
}