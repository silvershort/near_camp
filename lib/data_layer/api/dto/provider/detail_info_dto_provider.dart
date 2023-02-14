import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/data_layer/api/dto/request/detail_information_dto.dart';

final detailInfoDtoProvider = NotifierProvider<DetailInfoDtoNotifier, DetailInfoDto>(DetailInfoDtoNotifier.new);

class DetailInfoDtoNotifier extends Notifier<DetailInfoDto> {
  @override
  DetailInfoDto build() {
    return state;
  }

  void setDetailInfoDto(DetailInfoDto dto) {
    state = dto;
  }
}