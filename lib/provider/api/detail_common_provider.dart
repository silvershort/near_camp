import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/dto/request/detail_common_dto.dart';
import 'package:near_camp/model/detail_common_model.dart';
import 'package:near_camp/provider/_common/detail_base_notifier.dart';
import 'package:near_camp/repository/_common/base_repository.dart';
import 'package:near_camp/repository/detail_common_repository.dart';

final detailCommonProvider = AsyncNotifierProvider.family<DetailCommonNotifier, DetailCommonModel?, DetailCommonDto>(DetailCommonNotifier.new);

class DetailCommonNotifier extends DetailBaseNotifier<DetailCommonModel?, DetailCommonDto> {
  @override
  IBaseRepository<DetailCommonModel?, DetailCommonDto> initRepository() {
    return ref.watch(detailCommonRepository);
  }
}