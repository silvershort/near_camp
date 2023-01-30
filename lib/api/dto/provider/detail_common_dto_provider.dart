import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/dto/request/detail_common_dto.dart';

final detailCommonDtoProvider = NotifierProvider<DetailCommonDtoNotifier, DetailCommonDto>(DetailCommonDtoNotifier.new);

class DetailCommonDtoNotifier extends Notifier<DetailCommonDto> {
  @override
  DetailCommonDto build() {
    return state;
  }

  void setDetailCommonDto(DetailCommonDto dto) {
    state = dto;
  }
}